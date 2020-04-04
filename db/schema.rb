# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_03_222514) do

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
    t.string "adress"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "venue_name"
    t.string "adress"
    t.decimal "capacity"
    t.text "description"
    t.string "start_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "shopping_carts", force: :cascade do |t|
    t.decimal "amount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "ticket_order_id"
    t.integer "ticket_id"
    t.index ["ticket_id"], name: "index_shopping_carts_on_ticket_id"
    t.index ["ticket_order_id"], name: "index_shopping_carts_on_ticket_order_id"
  end

  create_table "ticket_orders", force: :cascade do |t|
    t.string "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "customer_id"
    t.index ["customer_id"], name: "index_ticket_orders_on_customer_id"
  end

  create_table "tickets", force: :cascade do |t|
    t.decimal "price"
    t.text "tipo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "event_id"
    t.index ["event_id"], name: "index_tickets_on_event_id"
  end

  add_foreign_key "shopping_carts", "ticket_orders"
  add_foreign_key "shopping_carts", "tickets"
  add_foreign_key "ticket_orders", "customers"
  add_foreign_key "tickets", "events"
end
