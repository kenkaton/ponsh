module PagyHelper
  # TailwindCSS用のカスタムページネーションヘルパー
  def pagy_nav_tailwind(pagy, **vars)
    # ページネーションがない場合は何も表示しない
    return "" if pagy.pages <= 1

    # パーシャルをレンダリング
    render "shared/pagy_nav", pagy: pagy, vars: vars
  end

  # 入力フィールド付きのコンパクトなページネーションヘルパー
  def pagy_nav_compact_tailwind(pagy, **vars)
    # ページネーションがない場合は何も表示しない
    return "" if pagy.pages <= 1

    # パーシャルをレンダリング
    render "shared/pagy_nav_compact", pagy: pagy, vars: vars
  end
end
