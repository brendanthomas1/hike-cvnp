ActiveRecord::Schema.define(version: 20170410011611) do

  create_table "trails", force: :cascade do |t|
    t.string "name", null: false
    t.float "distance", null: false
    t.string "type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
