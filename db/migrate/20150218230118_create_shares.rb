class CreateShares < ActiveRecord::Migration
  def change
    create_table :shares do |t|
      t.string :parameters

      t.belongs_to :page, index: true

      t.timestamps null: false
    end
  end
end
