class Log < ApplicationRecord
  belongs_to :users
  validates: :title, presence: true
  validates: :date, presence: true
end



    # t.string "card_name"
    # t.text "description"
    # t.date "date"
    # t.string "title"
    # t.string "spread_memo"
