class AddSalt < ActiveRecord::Migration
  def self.up
		add_column :workers, :salt, :string
  end

  def self.down
		remove_column :workers, :salt
  end
end
