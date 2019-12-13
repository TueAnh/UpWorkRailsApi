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

ActiveRecord::Schema.define(version: 2019_12_10_021306) do

  create_table "business_streams", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "business_stream_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "category_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "category_groups_id"
    t.index ["category_groups_id"], name: "index_categories_on_category_groups_id"
  end

  create_table "category_groups", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "category_group_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "company_name"
    t.text "profile_description"
    t.date "establishment_date"
    t.string "company_website_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "business_streams_id"
    t.index ["business_streams_id"], name: "index_companies_on_business_streams_id"
  end

  create_table "company_images", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "company_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "companies_id"
    t.index ["companies_id"], name: "index_company_images_on_companies_id"
  end

  create_table "education_details", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "institute_university_name"
    t.date "starting_date"
    t.date "completion_date"
    t.float "percentage"
    t.float "cgpa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "seeker_profiles_id"
    t.index ["seeker_profiles_id"], name: "index_education_details_on_seeker_profiles_id"
  end

  create_table "experience_details", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.boolean "is_current_job"
    t.date "start_date"
    t.date "end_date"
    t.string "job_title"
    t.string "company_name"
    t.string "job_location_city"
    t.string "job_location_state"
    t.string "job_location_country"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "seeker_profiles_id"
    t.index ["seeker_profiles_id"], name: "index_experience_details_on_seeker_profiles_id"
  end

  create_table "job_locations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "street_address"
    t.string "city"
    t.string "country"
    t.string "zip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_post_activities", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.date "apply_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "job_post_id"
    t.index ["job_post_id"], name: "index_job_post_activities_on_job_post_id"
    t.index ["user_id"], name: "index_job_post_activities_on_user_id"
  end

  create_table "job_post_skill_sets", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "skil_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "skill_sets_id"
    t.bigint "job_posts_id"
    t.index ["job_posts_id"], name: "index_job_post_skill_sets_on_job_posts_id"
    t.index ["skill_sets_id"], name: "index_job_post_skill_sets_on_skill_sets_id"
  end

  create_table "job_posts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.boolean "is_company_name_hidden"
    t.date "created_date"
    t.text "job_description"
    t.boolean "is_active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "users_id"
    t.bigint "categories_id"
    t.bigint "job_locations_id"
    t.bigint "job_types_id"
    t.bigint "companies_id"
    t.index ["categories_id"], name: "index_job_posts_on_categories_id"
    t.index ["companies_id"], name: "index_job_posts_on_companies_id"
    t.index ["job_locations_id"], name: "index_job_posts_on_job_locations_id"
    t.index ["job_types_id"], name: "index_job_posts_on_job_types_id"
    t.index ["users_id"], name: "index_job_posts_on_users_id"
  end

  create_table "job_types", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "job_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seeker_profiles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title"
    t.string "location"
    t.string "first_name"
    t.string "last_name"
    t.float "current_salary"
    t.boolean "is_annually_monthly"
    t.string "currency"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_seeker_profiles_on_user_id"
  end

  create_table "seeker_skill_sets", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "skill_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "seeker_profiles_id"
    t.bigint "skill_sets_id"
    t.index ["seeker_profiles_id"], name: "index_seeker_skill_sets_on_seeker_profiles_id"
    t.index ["skill_sets_id"], name: "index_seeker_skill_sets_on_skill_sets_id"
  end

  create_table "skill_sets", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "skill_set_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_logs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.date "last_login_date"
    t.date "last_job_apply_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "users_id"
    t.index ["users_id"], name: "index_user_logs_on_users_id"
  end

  create_table "user_types", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "user_type_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.date "date_of_birth"
    t.boolean "gender"
    t.boolean "is_active"
    t.string "contact_number"
    t.boolean "sms_notification_active"
    t.boolean "email_notification_acive"
    t.string "user_image"
    t.date "registration_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_types_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["user_types_id"], name: "index_users_on_user_types_id"
  end

  add_foreign_key "categories", "category_groups", column: "category_groups_id"
  add_foreign_key "companies", "business_streams", column: "business_streams_id"
  add_foreign_key "company_images", "companies", column: "companies_id"
  add_foreign_key "education_details", "seeker_profiles", column: "seeker_profiles_id"
  add_foreign_key "experience_details", "seeker_profiles", column: "seeker_profiles_id"
  add_foreign_key "job_post_activities", "job_posts"
  add_foreign_key "job_post_activities", "users"
  add_foreign_key "job_post_skill_sets", "job_posts", column: "job_posts_id"
  add_foreign_key "job_post_skill_sets", "skill_sets", column: "skill_sets_id"
  add_foreign_key "job_posts", "categories", column: "categories_id"
  add_foreign_key "job_posts", "companies", column: "companies_id"
  add_foreign_key "job_posts", "job_locations", column: "job_locations_id"
  add_foreign_key "job_posts", "job_types", column: "job_types_id"
  add_foreign_key "job_posts", "users", column: "users_id"
  add_foreign_key "seeker_profiles", "users"
  add_foreign_key "seeker_skill_sets", "seeker_profiles", column: "seeker_profiles_id"
  add_foreign_key "seeker_skill_sets", "skill_sets", column: "skill_sets_id"
  add_foreign_key "user_logs", "users", column: "users_id"
  add_foreign_key "users", "user_types", column: "user_types_id"
end
