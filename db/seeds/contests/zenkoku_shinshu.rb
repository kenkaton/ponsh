# 全国新酒鑑評会のコンテスト情報
contest = Contest.find_or_create_by!(
  name: "全国新酒鑑評会",
  code: "zenkoku_shinshu",
  description: "酒類総合研究所と日本酒造組合中央会が主催する日本でもっとも長い歴史を持つ審査会。新酒を全国的に調査研究することにより、製造技術と酒質の現状及び動向を明らかにし、もって清酒の品質向上に資することを目的に行っている鑑評会です。"
)

# 令和5年度（第110回）の開催情報
edition = contest.contest_editions.find_or_create_by!(
  year: 2023,
  name: "第110回全国新酒鑑評会",
  held_on: Date.new(2023, 4, 1),
  description: "令和5年度（第110回）全国新酒鑑評会"
)

# 賞の種類
awards = [
  {
    name: "金賞",
    code: "gold",
    rank: 1,
    description: "入賞酒のうち特に成績が優秀と認められた出品酒に与えられる最高位の賞。全出品酒の約25%が受賞する。" \
                "金賞受賞酒は、香り、味わい、バランスなどすべての評価項目において極めて優れた品質を有すると評価された酒です。"
  },
  {
    name: "入賞",
    code: "silver",
    rank: 2,
    description: "出品酒の中から、成績が優秀と認められた出品酒に与えられる賞。" \
                "入賞酒は、全体として優れた品質を有すると評価された酒です。"
  }
]

awards.each do |award_attrs|
  edition.awards.find_or_create_by!(award_attrs)
end

puts "全国新酒鑑評会のコンテスト情報を登録しました。"
