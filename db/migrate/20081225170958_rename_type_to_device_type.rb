class RenameTypeToDeviceType < ActiveRecord::Migration
  def self.up
		rename_column :devices, :type, :device_type
  end

  def self.down
		rename_column :devices, :device_type, :type
  end
end
