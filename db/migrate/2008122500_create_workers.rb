class CreateWorkers < ActiveRecord::Migration
  def self.up
    create_table :workers do |t|
      t.column :lastname,  :string
      t.column :firstname,  :string
      t.column :secondname,  :string
      t.column :degree, :string
      t.column :rank, :string
      t.column :faculty, :string
      t.column :email, :string
      t.column :phone, :string
    end
  end

  def self.down
    drop_table :workers
  end
end
