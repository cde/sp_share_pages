class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.string :url
      t.boolean :archived

      t.belongs_to :organization, index: true

      t.timestamps null: false
    end
  end
end
