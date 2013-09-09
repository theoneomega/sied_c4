# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20130909214611) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",                                  :null => false
    t.string   "resource_type",                                :null => false
    t.integer  "author_id",     :precision => 38, :scale => 0
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "i_act_adm_com_aut_typ_aut_id"
  add_index "active_admin_comments", ["namespace"], :name => "i_act_adm_com_nam"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "i_adm_not_res_typ_res_id"

  create_table "addresses", :force => true do |t|
    t.string   "street"
    t.integer  "interior_number", :precision => 38, :scale => 0
    t.string   "colony"
    t.string   "locality"
    t.datetime "created_at",                                     :null => false
    t.datetime "updated_at",                                     :null => false
  end

  create_table "admin_users", :force => true do |t|
    t.string   "email",                                                 :default => "", :null => false
    t.string   "encrypted_password",                                    :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :precision => 38, :scale => 0, :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                                            :null => false
    t.datetime "updated_at",                                                            :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "i_adm_use_res_pas_tok", :unique => true

  create_table "analysts", :force => true do |t|
    t.string   "analyst"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "areas", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "crimes", :force => true do |t|
    t.string   "crime"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "criminal_drugs", :force => true do |t|
    t.integer  "criminal_group_id", :precision => 38, :scale => 0
    t.integer  "drug_id",           :precision => 38, :scale => 0
    t.datetime "created_at",                                       :null => false
    t.datetime "updated_at",                                       :null => false
  end

  create_table "criminal_groups", :force => true do |t|
    t.text     "description"
    t.integer  "vehicle_id",  :precision => 38, :scale => 0
    t.integer  "weapon_id",   :precision => 38, :scale => 0
    t.integer  "drug_id",     :precision => 38, :scale => 0
    t.integer  "area_id",     :precision => 38, :scale => 0
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
  end

  create_table "criminal_vehicles", :force => true do |t|
    t.integer  "vehicle_id",        :precision => 38, :scale => 0
    t.integer  "criminal_group_id", :precision => 38, :scale => 0
    t.datetime "created_at",                                       :null => false
    t.datetime "updated_at",                                       :null => false
  end

  create_table "criminal_weapons", :force => true do |t|
    t.integer  "weapon_id",         :precision => 38, :scale => 0
    t.integer  "criminal_group_id", :precision => 38, :scale => 0
    t.datetime "created_at",                                       :null => false
    t.datetime "updated_at",                                       :null => false
  end

  create_table "drugs", :force => true do |t|
    t.string   "kind"
    t.integer  "quantity",     :precision => 38, :scale => 0
    t.text     "observations"
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
  end

  create_table "event_statuses", :force => true do |t|
    t.string   "status"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "events", :force => true do |t|
    t.string   "priority"
    t.datetime "event_date"
    t.text     "description"
    t.datetime "hour"
    t.integer  "victims",         :precision => 38, :scale => 0
    t.integer  "arrested",        :precision => 38, :scale => 0
    t.integer  "suspects",        :precision => 38, :scale => 0
    t.integer  "vehicles",        :precision => 38, :scale => 0
    t.text     "observations"
    t.string   "backup_file"
    t.integer  "weapons_id",      :precision => 38, :scale => 0
    t.integer  "drugs_id",        :precision => 38, :scale => 0
    t.string   "source"
    t.integer  "analyst_id",      :precision => 38, :scale => 0
    t.integer  "zone_id",         :precision => 38, :scale => 0
    t.integer  "status_event_id", :precision => 38, :scale => 0
    t.integer  "crime_id",        :precision => 38, :scale => 0
    t.integer  "township_id",     :precision => 38, :scale => 0
    t.integer  "place_id",        :precision => 38, :scale => 0
    t.integer  "address_id",      :precision => 38, :scale => 0
    t.datetime "created_at",                                     :null => false
    t.datetime "updated_at",                                     :null => false
    t.string   "street"
    t.string   "interior_number"
    t.string   "colony"
    t.string   "locality"
  end

  create_table "people", :force => true do |t|
    t.string   "ci"
    t.string   "first_name"
    t.string   "last_name1"
    t.string   "last_name2"
    t.string   "alias"
    t.datetime "birth_date"
    t.string   "originative"
    t.string   "genre"
    t.boolean  "record",       :precision => 1,  :scale => 0
    t.string   "profession"
    t.text     "observations"
    t.integer  "status_id",    :precision => 38, :scale => 0
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
  end

  create_table "places", :force => true do |t|
    t.string   "place"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "priorities", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "projects", :force => true do |t|
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.boolean  "protected",    :precision => 1,  :scale => 0
    t.boolean  "super_admin",  :precision => 1,  :scale => 0
    t.boolean  "branch_admin", :precision => 1,  :scale => 0
    t.boolean  "routes_admin", :precision => 1,  :scale => 0
    t.boolean  "driver",       :precision => 1,  :scale => 0
    t.text     "description"
    t.integer  "branch_id",    :precision => 38, :scale => 0
    t.datetime "created_at",                                  :null => false
    t.datetime "updated_at",                                  :null => false
  end

  add_index "roles", ["branch_id"], :name => "index_roles_on_branch_id"

  create_table "statuses", :force => true do |t|
    t.string   "description"
    t.string   "status_type"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "tasks", :force => true do |t|
    t.integer  "project_id",    :precision => 38, :scale => 0
    t.integer  "admin_user_id", :precision => 38, :scale => 0
    t.string   "title"
    t.boolean  "is_done",       :precision => 1,  :scale => 0
    t.datetime "due_date"
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
  end

  create_table "townships", :force => true do |t|
    t.integer  "di",         :precision => 38, :scale => 0
    t.string   "township"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone1"
    t.string   "phone2"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.integer  "zip",        :precision => 38, :scale => 0
    t.string   "country"
    t.integer  "role_id",    :precision => 38, :scale => 0
    t.integer  "branch_id",  :precision => 38, :scale => 0
    t.boolean  "active",     :precision => 1,  :scale => 0
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  add_index "users", ["role_id"], :name => "index_users_on_role_id"

  create_table "vehicles", :force => true do |t|
    t.string   "brand"
    t.string   "line"
    t.integer  "model",         :precision => 38, :scale => 0
    t.string   "plate"
    t.string   "serial_number"
    t.string   "color"
    t.boolean  "stolen",        :precision => 1,  :scale => 0
    t.string   "status"
    t.text     "details"
    t.integer  "person_id",     :precision => 38, :scale => 0
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
  end

  create_table "weapon_types", :force => true do |t|
    t.string   "desc"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "weapons", :force => true do |t|
    t.string   "brand"
    t.string   "model"
    t.string   "serial_number"
    t.string   "weapon"
    t.string   "caliber"
    t.integer  "person_id",      :precision => 38, :scale => 0
    t.integer  "weapon_type_id", :precision => 38, :scale => 0
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
  end

end
