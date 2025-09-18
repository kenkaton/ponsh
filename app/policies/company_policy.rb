class CompanyPolicy < ApplicationPolicy
  # 現在は親クラスの実装をそのまま継承
  # 将来的に以下の拡張を想定:
  # - 企業オーナーによる自社情報編集
  # - 企業固有の公開設定

  class Scope < ApplicationPolicy::Scope
    def resolve
      # 現在は全企業公開
      scope.all
    end
  end
end
