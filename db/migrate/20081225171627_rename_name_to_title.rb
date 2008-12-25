class RenameNameToTitle < ActiveRecord::Migration
  def self.up
		rename_column :devices, :name, :title
  end

  def self.down
		rename_column :devices, :title, :name
  end
end
