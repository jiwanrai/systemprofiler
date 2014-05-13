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

ActiveRecord::Schema.define(version: 20140513132217) do

  create_table "cpus", force: true do |t|
    t.string   "model"
    t.float    "speed"
    t.string   "cpu"
    t.integer  "cores"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "host_id"
    t.string   "vendor_id"
    t.string   "cpu_family"
    t.string   "stepping"
    t.string   "cache_size"
    t.string   "physical_id"
    t.string   "siblings"
    t.string   "core_id"
    t.string   "fpu"
    t.string   "flags",       limit: 1000
    t.string   "processor"
  end

  create_table "disks", force: true do |t|
    t.integer "host_id"
    t.string  "name",      limit: 50, null: false
    t.string  "fs_type",   limit: 50
    t.string  "disk_size", limit: 45
  end

  create_table "domains", force: true do |t|
    t.string "name", limit: 100, null: false
  end

  create_table "hosts", force: true do |t|
    t.string  "hostname",      limit: 45,  null: false
    t.integer "domain_id"
    t.string  "os",            limit: 100
    t.string  "os_version",    limit: 100
    t.string  "linux_version", limit: 100
    t.integer "mem_total"
    t.integer "swap_total"
    t.string  "description"
  end

  create_table "interfaces", force: true do |t|
    t.integer "host_id"
    t.string  "name",         limit: 45,  default: "", null: false
    t.string  "if_type",      limit: 45
    t.string  "mac_addr",     limit: 45
    t.string  "ip_address",   limit: 45
    t.string  "netmask",      limit: 45
    t.string  "ipv6_address", limit: 100
    t.string  "ipv6_scope",   limit: 45
  end

  create_table "nginx_logs", force: true do |t|
    t.datetime "date"
    t.string   "host",       limit: 45
    t.string   "domain"
    t.string   "public_ip",  limit: 45
    t.string   "request",    limit: 1000
    t.string   "status",     limit: 45
    t.string   "bytes",      limit: 45
    t.string   "referrer",   limit: 1000
    t.string   "user_agent", limit: 1000
    t.string   "scheme",     limit: 45
  end

  add_index "nginx_logs", ["domain"], name: "idx_nginx_domain", using: :btree

end
