class CreateVariants < ActiveRecord::Migration
  def change
    create_table :variants do |t|
      t.string :name
      t.text :description
      t.string :parameters

      t.belongs_to :provider, index: true

      t.timestamps null: false
    end
  end
end
