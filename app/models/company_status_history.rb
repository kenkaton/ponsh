# CompanyStatusHistory は、会社の状態変更履歴を管理するモデルです。
class CompanyStatusHistory < ApplicationRecord
  belongs_to :company, class_name: "Company"
  belongs_to :successor_company, class_name: "Company", optional: true

  validates :event_type, presence: true
  enum :event_type, {
    foundation: 0,    # 創業
    status_change: 1  # ステータス変更
  }

  validates :business_status, presence: true
  enum :business_status, {
    active: 0, # 営業中
    closed: 1, # 廃業
    transferred: 2, # 事業継承
    suspended: 3, # 休業中
    in_liquidation: 4, # 清算中
    civil_rehabilitation: 5, # 民事再生中
    corporate_reorganization: 6, # 会社更生中
    bankruptcy: 7, # 破産手続中
    merged: 8, # 合併
    separated: 9, # 分社化
    dissolved: 10 # 解散
  }
end
