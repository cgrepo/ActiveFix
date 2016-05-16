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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160516175438) do

  create_table "consumables", force: :cascade do |t|
    t.string   "type"
    t.string   "model"
    t.integer  "Copier_id"
    t.integer  "Printer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "consumables", ["Copier_id"], name: "index_consumables_on_Copier_id"
  add_index "consumables", ["Printer_id"], name: "index_consumables_on_Printer_id"

  create_table "copiers", force: :cascade do |t|
    t.string   "name"
    t.integer  "EquipmentProfile_id"
    t.integer  "Network_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "copiers", ["EquipmentProfile_id"], name: "index_copiers_on_EquipmentProfile_id"
  add_index "copiers", ["Network_id"], name: "index_copiers_on_Network_id"

  create_table "dependencies", force: :cascade do |t|
    t.string   "name"
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dependency_profiles", force: :cascade do |t|
    t.string   "location"
    t.string   "responsable"
    t.string   "telephone"
    t.string   "address"
    t.integer  "Dependency_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "dependency_profiles", ["Dependency_id"], name: "index_dependency_profiles_on_Dependency_id"

  create_table "equipment_profiles", force: :cascade do |t|
    t.string   "no_inventary"
    t.string   "serial_number"
    t.integer  "service_years"
    t.string   "manufacturer"
    t.string   "model"
    t.text     "notes"
    t.integer  "Dependency_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "equipment_profiles", ["Dependency_id"], name: "index_equipment_profiles_on_Dependency_id"

  create_table "networks", force: :cascade do |t|
    t.string   "link_type"
    t.string   "location"
    t.string   "ip_range"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pcs", force: :cascade do |t|
    t.string   "name"
    t.string   "hd"
    t.string   "os"
    t.string   "workgroup"
    t.string   "lan_mac"
    t.string   "wifi_mac"
    t.boolean  "bluethooth"
    t.string   "ip"
    t.string   "mask"
    t.integer  "EquipmentProfile_id"
    t.integer  "Network_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "pcs", ["EquipmentProfile_id"], name: "index_pcs_on_EquipmentProfile_id"
  add_index "pcs", ["Network_id"], name: "index_pcs_on_Network_id"

  create_table "pows", force: :cascade do |t|
    t.string   "type"
    t.integer  "EquipmentProfile_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "pows", ["EquipmentProfile_id"], name: "index_pows_on_EquipmentProfile_id"

  create_table "printers", force: :cascade do |t|
    t.string   "name"
    t.string   "type"
    t.integer  "EquipmentProfile_id"
    t.integer  "Network_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "printers", ["EquipmentProfile_id"], name: "index_printers_on_EquipmentProfile_id"
  add_index "printers", ["Network_id"], name: "index_printers_on_Network_id"

  create_table "screens", force: :cascade do |t|
    t.integer  "inches"
    t.integer  "EquipmentProfile_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "screens", ["EquipmentProfile_id"], name: "index_screens_on_EquipmentProfile_id"

  create_table "statistics", force: :cascade do |t|
    t.string   "month"
    t.integer  "sheet"
    t.integer  "consumable"
    t.integer  "Copier_id"
    t.integer  "Printer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "statistics", ["Copier_id"], name: "index_statistics_on_Copier_id"
  add_index "statistics", ["Printer_id"], name: "index_statistics_on_Printer_id"

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
