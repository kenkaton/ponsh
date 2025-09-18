class BrandPolicy < ApplicationPolicy
  # 現在は親クラスの実装をそのまま継承
  # 将来的に以下の拡張を想定:
  # - 所有企業のオーナーによる編集権限
  # - ブランド固有の公開設定

  class Scope < ApplicationPolicy::Scope
    def resolve
      # 現在は全銘柄公開
      scope.all
    end
  end
end
