class ChangeHomeUserColumn < ActiveRecord::Migration
  def self.up
    rename_column :homes, :user, :user_id
  end

  def self.down
    rename_column :homes, :user_id, :user
  end
end
