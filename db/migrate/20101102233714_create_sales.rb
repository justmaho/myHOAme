class CreateSales < ActiveRecord::Migration
  def self.up
    create_table :sales do |t|
      t.string :sale_name
      t.string :price
      t.boolean :sold

      t.timestamps
    end
  end

  def self.down
    drop_table :sales
  end
end
