class ChangeColumUserSales < ActiveRecord::Migration
  def self.up
    rename_column :sales, :user, :user_id
  end

  def self.down
    rename_column :sales, :user_id, :user
  end
end
