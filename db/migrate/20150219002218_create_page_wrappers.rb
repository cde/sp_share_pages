class CreatePageWrappers < ActiveRecord::Migration
  def change
    create_table :page_wrappers do |t|
      t.text :header
      t.text :footer

      t.timestamps null: false
    end
  end
end
