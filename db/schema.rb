# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20081225153713) do

  create_table "devices", :force => true do |t|
    t.string   "type"
    t.string   "name"
    t.string   "vendor"
    t.string   "country"
    t.string   "year"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "devices_workers", :id => false, :force => true do |t|
    t.integer "device_id"
    t.integer "worker_id"
  end

  add_index "devices_workers", ["device_id", "worker_id"], :name => "index_devices_workers_on_device_id_and_worker_id"

  create_table "workers", :force => true do |t|
    t.string "lastname"
    t.string "firstname"
    t.string "secondname"
    t.string "degree"
    t.string "rank"
    t.string "faculty"
    t.string "email"
    t.string "phone"
  end

end
