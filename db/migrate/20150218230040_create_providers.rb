# Storing  email, Facebook, or Twitter info
class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :name
      t.string :site_url
      t.string :parameters

      t.timestamps null: false
    end
  end
end
