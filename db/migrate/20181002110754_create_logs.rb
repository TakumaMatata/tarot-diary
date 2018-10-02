class CreateLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :logs do |t|
      t.string :card_name
      t.text :description
      t.date :date
      t.string :title
      t.string :spread_memo

      t.timestamps
    end
  end
end
