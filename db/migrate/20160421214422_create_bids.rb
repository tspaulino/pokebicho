class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.string :category
      t.string :code
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
