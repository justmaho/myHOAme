class CreatePayments < ActiveRecord::Migration
  def self.up
    create_table :payments do |t|
      t.integer :ammount
      t.integer :user_id
      t.string :concept

      t.timestamps
    end
  end

  def self.down
    drop_table :payments
  end
end
