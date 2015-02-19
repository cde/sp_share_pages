class AddShareButtonToPages < ActiveRecord::Migration
  def change
    add_column :pages, :share_button, :text
  end
end
