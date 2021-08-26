class CreateTables < ActiveRecord::Migration[5.2]
  def change
    create_table :tables do |t|
      create_table "book_comments", force: :cascade do |t|
        t.text "comment"
        t.integer "user_id"
        t.integer "book_id"
        t.datetime "created_at", null: false
        t.datetime "updated_at", null: false
      end
  
      create_table "books", force: :cascade do |t|
        t.text "title"
        t.text "body"
        t.integer "﻿user_id"
        t.datetime "created_at", null: false
        t.datetime "updated_at", null: false
        t.integer "user_id"
      end
    
      create_table "favorites", force: :cascade do |t|
        t.integer "user_id"
        t.integer "book_id"
        t.datetime "created_at", null: false
        t.datetime "updated_at", null: false
      end
    
      create_table "fovorites", force: :cascade do |t|
        t.integer "user_id"
        t.integer "book_id"
        t.datetime "created_at", null: false
        t.datetime "updated_at", null: false
      end
    
      create_table "post_comments", force: :cascade do |t|
        t.text "comment"
        t.integer "user_id"
        t.integer "book_id"
        t.datetime "created_at", null: false
        t.datetime "updated_at", null: false
      end
    
      create_table "users", force: :cascade do |t|
        t.string "email", default: "", null: false
        t.string "encrypted_password", default: "", null: false
        t.string "reset_password_token"
        t.datetime "reset_password_sent_at"
        t.datetime "remember_created_at"
        t.string "name"
        t.datetime "created_at", null: false
        t.datetime "updated_at", null: false
        t.string "profile_image_id"
        t.text "introduction"
        t.string "username", default: "", null: false
        t.index ["email"], name: "index_users_on_email", unique: true
        t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
      end
    end
  end
end
