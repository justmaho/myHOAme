class AddUserSales < ActiveRecord::Migration
  def self.up
    add_column :sales, :user, :integer
  end

  def self.down
    remove_column :sales, :user
  end
end
