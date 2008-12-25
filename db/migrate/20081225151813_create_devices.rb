class CreateDevices < ActiveRecord::Migration
  def self.up
    create_table :devices do |t|
	t.column :type, :string
	t.column :name, :string
	t.column :vendor, :string
	t.column :country, :string
	t.column :year, :string
	t.column :description, :text

      t.timestamps
    end
  end

  def self.down
    drop_table :devices
  end
end
