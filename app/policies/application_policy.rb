class ApplicationPolicy
  attr_reader :account, :record

  def initialize(account, record)
    @account = account
    @record = record
  end

  # 閲覧系アクション（全ユーザー開放）
  def index?
    true
  end

  def show?
    true
  end

  # 作成・編集系アクション（将来の管理者機能用）
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

  # Scope（一覧取得の制御）
  class Scope
    def initialize(account, scope)
      @account = account
      @scope = scope
    end

    def resolve
      # デフォルトは全件公開
      scope.all
    end

    private

    attr_reader :account, :scope

    def admin?
      account&.respond_to?(:admin?) && account.admin?
    end

    def user?
      account.present?
    end
  end

  private

  def admin?
    # 現在は未実装、将来的にAccount#admin?を追加予定
    false
  end

  def user?
    account.present?
  end

  def guest?
    account.nil?
  end
end
