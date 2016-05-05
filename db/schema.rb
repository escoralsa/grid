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

ActiveRecord::Schema.define(version: 20160504051422) do

  create_table "activities", force: :cascade do |t|
    t.datetime "date"
    t.text     "description", limit: 65535
    t.integer  "employee_id", limit: 4
    t.integer  "ticket_id",   limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "user_id",     limit: 4
  end

  add_index "activities", ["employee_id"], name: "index_activities_on_employee_id", using: :btree
  add_index "activities", ["ticket_id"], name: "index_activities_on_ticket_id", using: :btree
  add_index "activities", ["user_id"], name: "index_activities_on_user_id", using: :btree

  create_table "appliances", force: :cascade do |t|
    t.integer  "storeNumbre", limit: 4
    t.string   "name",        limit: 255
    t.string   "intIp",       limit: 255
    t.string   "extIp",       limit: 255
    t.string   "brand",       limit: 255
    t.string   "model",       limit: 255
    t.string   "user",        limit: 255
    t.string   "password",    limit: 255
    t.integer  "customer_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "appliances", ["customer_id"], name: "index_appliances_on_customer_id", using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "companies", ["name"], name: "index_companies_on_name", using: :btree

  create_table "customers", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "adress",      limit: 65535
    t.string   "phone",       limit: 255
    t.string   "contact",     limit: 255
    t.string   "rfc",         limit: 255
    t.string   "email",       limit: 255
    t.string   "ip",          limit: 255
    t.text     "server",      limit: 65535
    t.boolean  "datacenter"
    t.string   "vpacesetter", limit: 255
    t.string   "vprogress",   limit: 255
    t.integer  "userNumber",  limit: 4
    t.string   "catalog",     limit: 255
    t.string   "softwareC",   limit: 255
    t.text     "programesp",  limit: 65535
    t.text     "emailpdf",    limit: 65535
    t.text     "emailxml",    limit: 65535
    t.boolean  "pdf"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "devices", force: :cascade do |t|
    t.integer  "storeNumbre", limit: 4
    t.string   "name",        limit: 255
    t.string   "intIp",       limit: 255
    t.string   "extIp",       limit: 255
    t.string   "brand",       limit: 255
    t.string   "model",       limit: 255
    t.string   "user",        limit: 255
    t.string   "password",    limit: 255
    t.integer  "customer_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "devices", ["customer_id"], name: "index_devices_on_customer_id", using: :btree

  create_table "employees", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "email",      limit: 255
    t.string   "phone",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "priorities", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "project_roles", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.boolean  "can_close_tasks"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "project_roles", ["name"], name: "index_project_roles_on_name", using: :btree

  create_table "projects", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.integer  "customer_id", limit: 4
    t.integer  "supplier_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "projects", ["customer_id"], name: "index_projects_on_customer_id", using: :btree
  add_index "projects", ["supplier_id"], name: "index_projects_on_supplier_id", using: :btree

  create_table "situations", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "position",   limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "statuses", ["name"], name: "index_statuses_on_name", using: :btree
  add_index "statuses", ["position"], name: "index_statuses_on_position", using: :btree

  create_table "tasks", force: :cascade do |t|
    t.string   "title",               limit: 255
    t.text     "description",         limit: 65535
    t.integer  "created_by_id",       limit: 4
    t.integer  "project_id",          limit: 4
    t.date     "due_date"
    t.integer  "priority_id",         limit: 4
    t.integer  "status_id",           limit: 4
    t.integer  "relevant_version_id", limit: 4
    t.integer  "expected_version_id", limit: 4
    t.float    "estimated_time",      limit: 24
    t.boolean  "archived"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tasks", ["created_by_id"], name: "index_tasks_on_created_by_id", using: :btree
  add_index "tasks", ["expected_version_id"], name: "index_tasks_on_expected_version_id", using: :btree
  add_index "tasks", ["priority_id"], name: "index_tasks_on_priority_id", using: :btree
  add_index "tasks", ["project_id"], name: "index_tasks_on_project_id", using: :btree
  add_index "tasks", ["relevant_version_id"], name: "index_tasks_on_relevant_version_id", using: :btree
  add_index "tasks", ["status_id"], name: "index_tasks_on_status_id", using: :btree
  add_index "tasks", ["title"], name: "index_tasks_on_title", using: :btree

  create_table "tasks_users", id: false, force: :cascade do |t|
    t.integer "task_id", limit: 4
    t.integer "user_id", limit: 4
  end

  add_index "tasks_users", ["task_id"], name: "index_tasks_users_on_task_id", using: :btree
  add_index "tasks_users", ["user_id"], name: "index_tasks_users_on_user_id", using: :btree

  create_table "tickets", force: :cascade do |t|
    t.datetime "date"
    t.string   "contactName",  limit: 255
    t.text     "notes",        limit: 65535
    t.integer  "employee_id",  limit: 4
    t.integer  "customer_id",  limit: 4
    t.integer  "priority_id",  limit: 4
    t.integer  "situation_id", limit: 4
    t.integer  "category_id",  limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "user_id",      limit: 4
  end

  add_index "tickets", ["category_id"], name: "index_tickets_on_category_id", using: :btree
  add_index "tickets", ["customer_id"], name: "index_tickets_on_customer_id", using: :btree
  add_index "tickets", ["employee_id"], name: "index_tickets_on_employee_id", using: :btree
  add_index "tickets", ["priority_id"], name: "index_tickets_on_priority_id", using: :btree
  add_index "tickets", ["situation_id"], name: "index_tickets_on_situation_id", using: :btree
  add_index "tickets", ["user_id"], name: "index_tickets_on_user_id", using: :btree

  create_table "user_project_participations", force: :cascade do |t|
    t.integer  "project_id",      limit: 4
    t.integer  "user_id",         limit: 4
    t.integer  "project_role_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_project_participations", ["project_id"], name: "index_user_project_participations_on_project_id", using: :btree
  add_index "user_project_participations", ["project_role_id"], name: "index_user_project_participations_on_project_role_id", using: :btree
  add_index "user_project_participations", ["user_id"], name: "index_user_project_participations_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "name",                   limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "versions", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "project_id", limit: 4
    t.string   "status",     limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "versions", ["name"], name: "index_versions_on_name", using: :btree
  add_index "versions", ["project_id"], name: "index_versions_on_project_id", using: :btree
  add_index "versions", ["status"], name: "index_versions_on_status", using: :btree

  create_table "wice_grid_serialized_queries", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "grid_name",  limit: 255
    t.text     "query",      limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "wice_grid_serialized_queries", ["grid_name", "id"], name: "index_wice_grid_serialized_queries_on_grid_name_and_id", using: :btree
  add_index "wice_grid_serialized_queries", ["grid_name"], name: "index_wice_grid_serialized_queries_on_grid_name", using: :btree

  add_foreign_key "activities", "employees"
  add_foreign_key "activities", "tickets"
  add_foreign_key "activities", "users"
  add_foreign_key "appliances", "customers"
  add_foreign_key "tickets", "categories"
  add_foreign_key "tickets", "customers"
  add_foreign_key "tickets", "employees"
  add_foreign_key "tickets", "priorities"
  add_foreign_key "tickets", "situations"
  add_foreign_key "tickets", "users"
end
