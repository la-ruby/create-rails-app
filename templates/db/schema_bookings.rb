
  create_table "bookings", force: :cascade do |t|
    t.bigint "starting"
    t.bigint "ending"
    t.string "name"
    t.boolean "gmail"
    t.boolean "granted"
    t.boolean "trello"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
