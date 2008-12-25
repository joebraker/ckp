class DevicesWorkers < ActiveRecord::Migration
  def self.up
		create_table :devices_workers, :id => false do |t|
			t.column :device_id, :integer
			t.column :worker_id, :integer
		end

		add_index :devices_workers, [:device_id, :worker_id]
  end

  def self.down
		drop :devices_workers
  end
end
