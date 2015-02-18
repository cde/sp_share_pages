class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.string :location
      t.string :parameters
      t.string :technology

      t.belongs_to :page, index: true

      t.timestamps null: false
    end
  end
end
