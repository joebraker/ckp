class AddPassword < ActiveRecord::Migration
  def self.up
		add_column :workers, :hashed_password, :string
  end

  def self.down
		remove_column :workers, :hashed_password
  end
end
