class AddAdminToOwnerships < ActiveRecord::Migration
  def change
    add_column :ownerships, :admin, :boolean, :default=>false
  end
end
