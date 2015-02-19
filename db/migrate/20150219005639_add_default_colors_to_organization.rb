class AddDefaultColorsToOrganization < ActiveRecord::Migration
  def change
    add_column :organizations, :default_bg_color, :string
    add_column :organizations, :default_button_color, :string
  end
end
