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

ActiveRecord::Schema.define(version: 20171208082744) do

  create_table "user_points", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "user_id"
    t.integer "point", comment: "积分"
    t.integer "status", comment: "0:历史记录 1：最新记录"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_points_on_user_id"
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "phone", comment: "手机号码"
    t.string "password", comment: "密码"
    t.datetime "start_time", comment: "开始时间"
    t.datetime "end_time", comment: "结束时间"
    t.integer "status", comment: "0: 禁用 1:可用"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "vk_id", comment: "万科经纪人id"
    t.string "wxopenid", comment: "微信openid"
  end

end
