class CreateServices < ActiveRecord::Migration
  def self.up
    create_table :services do |t|
      t.string :service_name
      t.string :person_name
      t.string :phone

      t.timestamps
    end
  end

  def self.down
    drop_table :services
  end
end
