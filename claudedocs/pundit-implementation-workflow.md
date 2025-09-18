# Pundit Authorization Implementation Workflow

## 🎯 Overview
Systematic implementation workflow for integrating Pundit authorization into the Ponsh Rails application, following the phased approach defined in the design document.

## 📋 Pre-Implementation Checklist

### Environment Verification
- [ ] Rails 8.0.1 compatibility confirmed
- [ ] Rodauth authentication fully operational
- [ ] Current account helper (`current_account`) working
- [ ] Existing controllers have CRUD actions implemented
- [ ] Test suite passing with current codebase

### Dependency Analysis
- [ ] Review Gemfile for conflicting authorization gems
- [ ] Check ApplicationController for existing auth patterns
- [ ] Verify helper methods availability
- [ ] Assess current route constraints

## 🚀 Phase 1: Foundation Setup (Immediate Implementation)

### Step 1.1: Gem Installation
```bash
# Add Pundit to Gemfile
echo 'gem "pundit", "~> 2.3"' >> Gemfile

# Install dependencies
bundle install

# Verify installation
bundle show pundit
```

### Step 1.2: Generate Pundit Base Files
```bash
# Generate Pundit installation files
rails generate pundit:install

# Verify generated files
ls -la app/policies/
# Should contain: application_policy.rb
```

### Step 1.3: Configure ApplicationController
```ruby
# app/controllers/application_controller.rb
class ApplicationController < ActionController::Base
  include Pagy::Backend
  include Pundit::Authorization

  # Development-only: skip authorization checks initially
  # Remove these after Phase 1 verification
  after_action :verify_authorized, except: [:index, :show], unless: :skip_pundit?
  after_action :verify_policy_scoped, only: [:index], unless: :skip_pundit?

  rescue_from Pundit::NotAuthorizedError, with: :access_denied

  private

  def current_account
    rodauth.rails_account
  end
  helper_method :current_account

  # Pundit user method override
  def pundit_user
    current_account
  end

  def authenticate
    rodauth.require_account
  end

  def access_denied(exception)
    policy_name = exception.policy.class.to_s.underscore
    flash[:alert] = t("pundit.#{policy_name}.#{exception.query}", 
                     default: t('pundit.default'))
    redirect_to(request.referrer || root_path)
  end

  # Temporary method for phased rollout
  def skip_pundit?
    Rails.env.development? && ENV['ENABLE_PUNDIT'] != 'true'
  end
end
```

### Step 1.4: Create Base ApplicationPolicy
```ruby
# app/policies/application_policy.rb
class ApplicationPolicy
  attr_reader :account, :record

  def initialize(account, record)
    @account = account
    @record = record
  end

  # Public read access (Phase 1: permissive)
  def index?
    true
  end

  def show?
    true
  end

  # Write access (Phase 1: admin only - currently false)
  def create?
    admin?
  end

  def new?
    create?
  end

  def update?
    admin?
  end

  def edit?
    update?
  end

  def destroy?
    admin?
  end

  class Scope
    def initialize(account, scope)
      @account = account
      @scope = scope
    end

    def resolve
      scope.all
    end

    private

    attr_reader :account, :scope

    def admin?
      account&.respond_to?(:admin?) && account.admin?
    end
  end

  private

  def admin?
    # Phase 1: No admin users yet
    false
  end

  def user?
    account.present?
  end

  def guest?
    account.nil?
  end
end
```

### Step 1.5: Internationalization Setup
```yaml
# config/locales/pundit.ja.yml
ja:
  pundit:
    default: 'この操作を実行する権限がありません。'
    brand_policy:
      index?: 'ブランド一覧を表示する権限がありません。'
      show?: 'このブランドを表示する権限がありません。'
      create?: 'ブランドを作成する権限がありません。'
      update?: 'このブランドを編集する権限がありません。'
      destroy?: 'このブランドを削除する権限がありません。'
    company_policy:
      index?: '企業一覧を表示する権限がありません。'
      show?: 'この企業を表示する権限がありません。'
      create?: '企業を作成する権限がありません。'
      update?: 'この企業情報を編集する権限がありません。'
      destroy?: 'この企業を削除する権限がありません。'
```

### Step 1.6: Verification Commands
```bash
# Run console tests
rails console
> ApplicationPolicy.new(nil, Brand.new).index?  # Should return true
> ApplicationPolicy.new(nil, Brand.new).create? # Should return false

# Test in development
ENABLE_PUNDIT=false rails server # Without Pundit
ENABLE_PUNDIT=true rails server  # With Pundit
```

## 🏗️ Phase 2: Policy Implementation

### Step 2.1: Generate Individual Policies
```bash
# Generate policy files
rails generate pundit:policy Brand
rails generate pundit:policy Company
rails generate pundit:policy Product
rails generate pundit:policy Contest
rails generate pundit:policy Award
```

### Step 2.2: Implement BrandPolicy
```ruby
# app/policies/brand_policy.rb
class BrandPolicy < ApplicationPolicy
  # Inherit all methods from ApplicationPolicy
  # Future extensions documented below
  
  class Scope < ApplicationPolicy::Scope
    def resolve
      if account&.admin?
        scope.all
      else
        scope.where(published: true) # Assuming future published flag
      end
    end
  end

  # Phase 2+ extensions (commented for future use)
  # def update?
  #   admin? || owner?
  # end
  
  # private
  
  # def owner?
  #   account && record.company.owner_account_id == account.id
  # end
end
```

### Step 2.3: Implement CompanyPolicy
```ruby
# app/policies/company_policy.rb
class CompanyPolicy < ApplicationPolicy
  class Scope < ApplicationPolicy::Scope
    def resolve
      scope.all # Phase 1: All companies public
    end
  end

  # Future extension points documented
  # def update?
  #   admin? || company_owner?
  # end
end
```

### Step 2.4: Create Policy Test Infrastructure
```ruby
# test/policies/application_policy_test.rb
require 'test_helper'

class ApplicationPolicyTest < ActiveSupport::TestCase
  def setup
    @guest = nil
    @user = accounts(:one) # Assuming fixture exists
    @record = brands(:one)
  end

  test "guests can view but not modify" do
    policy = ApplicationPolicy.new(@guest, @record)
    assert policy.index?
    assert policy.show?
    refute policy.create?
    refute policy.update?
    refute policy.destroy?
  end

  test "users can view but not modify" do
    policy = ApplicationPolicy.new(@user, @record)
    assert policy.index?
    assert policy.show?
    refute policy.create?
    refute policy.update?
    refute policy.destroy?
  end
end
```

## 🔧 Phase 3: Controller Integration

### Step 3.1: Update BrandsController
```ruby
# app/controllers/brands_controller.rb
class BrandsController < ApplicationController
  before_action :set_brand, only: %i[show edit update destroy]

  def index
    @query = params[:q].presence
    # Apply policy scope
    brands = policy_scope(Brand)
    @pagy, @brands = pagy(brands.search(@query))
  end

  def show
    authorize @brand
    # Existing implementation
  end

  def new
    @brand = Brand.new
    authorize @brand
    # Existing implementation
  end

  def create
    @brand = Brand.new(brand_params)
    authorize @brand
    
    if @brand.save
      redirect_to @brand, notice: t('.success')
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    authorize @brand
    # Existing implementation
  end

  def update
    authorize @brand
    
    if @brand.update(brand_params)
      redirect_to @brand, notice: t('.success')
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @brand
    @brand.destroy
    redirect_to brands_url, notice: t('.success')
  end

  private

  def set_brand
    @brand = Brand.find(params[:id])
  end

  def brand_params
    params.require(:brand).permit(:name, :name_kana, :company_id, :description)
  end
end
```

### Step 3.2: Update CompaniesController
```ruby
# app/controllers/companies_controller.rb
class CompaniesController < ApplicationController
  before_action :set_company, only: %i[show edit update destroy]

  def index
    @companies = policy_scope(Company)
    @pagy, @companies = pagy(@companies)
  end

  def show
    authorize @company
    # Existing implementation
  end

  # Similar pattern for other actions...
  
  private

  def set_company
    @company = Company.find(params[:id])
  end
end
```

### Step 3.3: Controller Testing Updates
```ruby
# test/controllers/brands_controller_test.rb
require 'test_helper'

class BrandsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @brand = brands(:one)
  end

  test "should get index without authentication" do
    get brands_url
    assert_response :success
  end

  test "should show brand without authentication" do
    get brand_url(@brand)
    assert_response :success
  end

  test "should not create brand without authentication" do
    assert_raises(Pundit::NotAuthorizedError) do
      post brands_url, params: { brand: { name: "New Brand" } }
    end
  end

  test "should not update brand without authentication" do
    assert_raises(Pundit::NotAuthorizedError) do
      patch brand_url(@brand), params: { brand: { name: "Updated" } }
    end
  end
end
```

## 🧪 Phase 4: Testing Infrastructure

### Step 4.1: Policy Test Helpers
```ruby
# test/support/policy_test_helper.rb
module PolicyTestHelper
  def assert_permit(user, record, *actions)
    actions.each do |action|
      assert permit(user, record, action),
             "Expected #{user.inspect} to be permitted to #{action} #{record.inspect}"
    end
  end

  def refute_permit(user, record, *actions)
    actions.each do |action|
      refute permit(user, record, action),
             "Expected #{user.inspect} NOT to be permitted to #{action} #{record.inspect}"
    end
  end

  def permit(user, record, action)
    policy = Pundit.policy!(user, record)
    policy.public_send("#{action}?")
  end
end

# Include in test_helper.rb
class ActiveSupport::TestCase
  include PolicyTestHelper
end
```

### Step 4.2: System Test Updates
```ruby
# test/system/brands_test.rb
require "application_system_test_case"

class BrandsTest < ApplicationSystemTestCase
  setup do
    @brand = brands(:one)
  end

  test "visiting the index" do
    visit brands_url
    assert_selector "h1", text: "Brands"
    assert_text @brand.name
  end

  test "cannot see edit button as guest" do
    visit brand_url(@brand)
    assert_no_selector "a", text: "Edit"
  end

  test "admin can see management buttons" do
    # Login as admin (when implemented)
    # visit brand_url(@brand)
    # assert_selector "a", text: "Edit"
    # assert_selector "button", text: "Delete"
  end
end
```

### Step 4.3: Test Coverage Verification
```bash
# Run all policy tests
rails test test/policies/

# Run controller tests with Pundit enabled
ENABLE_PUNDIT=true rails test test/controllers/

# Run system tests
rails test:system

# Generate coverage report (if SimpleCov configured)
COVERAGE=true rails test
```

## ✅ Phase 5: Validation & Documentation

### Step 5.1: Validation Checklist
```bash
# 1. Verify public access still works
curl http://localhost:3000/brands
curl http://localhost:3000/companies

# 2. Check unauthorized access is blocked
# Try to POST without authentication
curl -X POST http://localhost:3000/brands \
  -H "Content-Type: application/json" \
  -d '{"brand":{"name":"Test"}}'
# Should return 302 redirect or 403 forbidden

# 3. Verify policy scopes
rails console
> BrandPolicy::Scope.new(nil, Brand).resolve.count
> CompanyPolicy::Scope.new(nil, Company).resolve.count

# 4. Test error messages
rails console
> I18n.t('pundit.brand_policy.create?')
```

### Step 5.2: Performance Monitoring
```ruby
# config/initializers/pundit_instrumentation.rb
ActiveSupport::Notifications.subscribe("pundit.authorize") do |name, start, finish, id, payload|
  duration = finish - start
  Rails.logger.info "[Pundit] Authorized #{payload[:policy]}##{payload[:query]} in #{duration}ms"
end

ActiveSupport::Notifications.subscribe("pundit.policy_scope") do |name, start, finish, id, payload|
  duration = finish - start
  Rails.logger.info "[Pundit] Scoped #{payload[:policy]} in #{duration}ms"
end
```

### Step 5.3: Documentation Updates
```markdown
# README.md additions

## Authorization

This application uses Pundit for authorization. Key concepts:

- **Policies**: Define who can perform actions on resources
- **Policy Scopes**: Filter collections based on permissions
- **Current User**: Uses Rodauth's `current_account` method

### Testing Authorization

```bash
# Run with Pundit enabled
ENABLE_PUNDIT=true rails server

# Run policy tests
rails test test/policies/
```

### Adding New Resources

1. Generate policy: `rails g pundit:policy ResourceName`
2. Define permissions in the policy class
3. Add `authorize` calls to controller actions
4. Write policy tests
```

## 🚦 Go/No-Go Criteria

### Phase 1 Complete
- [ ] All existing public routes still accessible
- [ ] No regression in current functionality
- [ ] Pundit integrated without breaking changes
- [ ] Basic policies created and tested
- [ ] Internationalization configured

### Phase 2 Ready
- [ ] Admin flag added to Account model
- [ ] Admin user creation mechanism in place
- [ ] Management UI designs approved
- [ ] Route configuration updated

### Phase 3 Ready
- [ ] Comment model designed
- [ ] User registration flow complete
- [ ] Comment policy requirements defined
- [ ] UI/UX for comments approved

## 🔄 Rollback Plan

### Quick Disable
```ruby
# In ApplicationController
def skip_pundit?
  true # Disables all Pundit checks
end
```

### Complete Removal
```bash
# Remove from Gemfile
bundle remove pundit

# Remove generated files
rm -rf app/policies/
rm config/locales/pundit.ja.yml

# Remove from ApplicationController
# Remove: include Pundit::Authorization
# Remove: after_action callbacks
# Remove: rescue_from Pundit::NotAuthorizedError

# Remove authorize calls from controllers
# Use git to revert controller changes
```

## 📊 Success Metrics

### Phase 1 Success
- Zero production errors after deployment
- All existing features remain functional
- Page load times unchanged (< 5% variance)
- Test coverage maintained or improved

### Phase 2 Success
- Admin can perform CRUD operations
- Non-admins properly restricted
- No security vulnerabilities introduced
- Audit log of admin actions

### Phase 3 Success
- Users can manage own comments
- Admins can moderate all comments
- Performance acceptable with large comment volumes
- User satisfaction with permission model

## 🎓 Team Training

### Developer Onboarding
1. Review Pundit documentation
2. Understand policy pattern
3. Practice writing policies
4. Review test patterns

### Code Review Checklist
- [ ] All controller actions have authorization
- [ ] Policy scopes used for collections
- [ ] Tests cover permission scenarios
- [ ] Error messages are user-friendly
- [ ] No authorization bypasses

## 🔗 Resources

- [Pundit Documentation](https://github.com/varvet/pundit)
- [Rails Authorization Best Practices](https://guides.rubyonrails.org/security.html#authorization)
- [Rodauth Integration Guide](https://rodauth.jeremyevans.net/)
- Internal Design Document: `claudedocs/pundit-authorization-design.md`