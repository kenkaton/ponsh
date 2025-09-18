class CommentPolicy < ApplicationPolicy
  class Scope < ApplicationPolicy::Scope
    def resolve
      # すべてのコメントが閲覧可能
      scope
    end
  end

  def show?
    # すべてのコメントが閲覧可能
    true
  end

  def create?
    # ログイン済みユーザーのみ作成可能
    account.present?
  end

  def update?
    # 自分のコメントのみ編集可能
    account.present? && record.account == account
  end

  def destroy?
    # 自分のコメントのみ削除可能
    account.present? && record.account == account
  end
end
