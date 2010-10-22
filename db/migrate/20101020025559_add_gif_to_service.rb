class AddGifToService < ActiveRecord::Migration
  def self.up
    add_column :services, :service_type, :integer
  end

  def self.down
    remove_column :services, :service_type
  end
end
