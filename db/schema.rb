# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110318105810) do

  create_table "data_fields", :force => true do |t|
    t.string   "tag"
    t.string   "ind1"
    t.string   "ind2"
    t.integer  "record_id"
    t.string   "code"
    t.text     "value"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "field_type"
  end

  create_table "records", :force => true do |t|
    t.text     "author_main"
    t.string   "isbn"
    t.text     "title_main"
    t.string   "helmet_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "marcxml"
    t.text     "json"
  end

  add_index "records", ["helmet_id"], :name => "index_records_on_helmet_id", :unique => true

  create_table "subfields", :force => true do |t|
    t.string   "value"
    t.string   "code"
    t.integer  "data_field_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "titles", :force => true do |t|
    t.string   "permalink"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
