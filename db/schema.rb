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

ActiveRecord::Schema.define(:version => 20130422234905) do

  create_table "activities", :force => true do |t|
    t.binary   "uuid",          :limit => 255, :null => false
    t.binary   "section_id",    :limit => 255, :null => false
    t.string   "name",                         :null => false
    t.string   "activity_type",                :null => false
    t.integer  "seq",                          :null => false
    t.binary   "medium_id",     :limit => 255, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "activities", ["uuid"], :name => "index_activities_on_uuid", :unique => true, :length => {"uuid"=>72}

  create_table "activity_problems", :id => false, :force => true do |t|
    t.binary   "activity_id", :limit => 255, :null => false
    t.binary   "problem_id",  :limit => 255, :null => false
    t.integer  "seq",                        :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "activity_problems", ["activity_id"], :name => "index_activity_problems_on_activity_id", :length => {"activity_id"=>72}

  create_table "images", :force => true do |t|
    t.binary   "uuid",        :limit => 255, :null => false
    t.binary   "media_id",    :limit => 255, :null => false
    t.binary   "piece_id",    :limit => 255, :null => false
    t.integer  "seq",                        :null => false
    t.binary   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "images", ["uuid"], :name => "index_images_on_uuid", :unique => true, :length => {"uuid"=>72}

  create_table "jumps", :id => false, :force => true do |t|
    t.binary   "from_activity_id", :limit => 255, :null => false
    t.binary   "to_activity_id",   :limit => 255, :null => false
    t.string   "condition"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "jumps", ["from_activity_id", "to_activity_id"], :name => "index_jumps_on_from_activity_id_and_to_activity_id", :length => {"from_activity_id"=>72, "to_activity_id"=>72}
  add_index "jumps", ["from_activity_id"], :name => "index_jumps_on_from_activity_id", :length => {"from_activity_id"=>72}

  create_table "lessons", :force => true do |t|
    t.binary   "uuid",       :limit => 255, :null => false
    t.binary   "subject_id", :limit => 255, :null => false
    t.string   "name",                      :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lessons", ["uuid"], :name => "index_lessons_on_uuid", :unique => true, :length => {"uuid"=>72}

  create_table "media", :force => true do |t|
    t.binary   "uuid",              :limit => 255, :null => false
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "media", ["uuid"], :name => "index_media_on_uuid", :unique => true, :length => {"uuid"=>72}

  create_table "pieces", :force => true do |t|
    t.binary   "uuid",             :limit => 255, :null => false
    t.binary   "creator_id",       :limit => 255, :null => false
    t.binary   "subject_id",       :limit => 255, :null => false
    t.binary   "textbook_node_id", :limit => 255, :null => false
    t.string   "name",                            :null => false
    t.string   "piece_type",                      :null => false
    t.binary   "medium_id",        :limit => 255, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "problem_choices", :force => true do |t|
    t.binary   "uuid",         :limit => 255, :null => false
    t.binary   "problem_id",   :limit => 255, :null => false
    t.integer  "seq",                         :null => false
    t.string   "display_text"
    t.boolean  "is_answer"
    t.string   "text_answer"
    t.binary   "media_id",     :limit => 255, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "problem_choices", ["uuid"], :name => "index_problem_choices_on_uuid", :unique => true, :length => {"uuid"=>72}

  create_table "problems", :force => true do |t|
    t.binary   "uuid",         :limit => 255, :null => false
    t.string   "problem_type",                :null => false
    t.string   "body",                        :null => false
    t.binary   "media_id",     :limit => 255, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "problems", ["uuid"], :name => "index_problems_on_uuid", :unique => true, :length => {"uuid"=>72}

  create_table "schools", :force => true do |t|
    t.binary   "uuid",       :limit => 255, :null => false
    t.string   "name",                      :null => false
    t.string   "address"
    t.boolean  "is_set"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "schools", ["uuid"], :name => "index_schools_on_uuid", :unique => true, :length => {"uuid"=>72}

  create_table "sections", :force => true do |t|
    t.binary   "uuid",       :limit => 255, :null => false
    t.binary   "stage_id",   :limit => 255, :null => false
    t.string   "name",                      :null => false
    t.integer  "seq",                       :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sections", ["uuid"], :name => "index_sections_on_uuid", :unique => true, :length => {"uuid"=>72}

  create_table "staffs", :force => true do |t|
    t.binary   "uuid",                :limit => 255,                    :null => false
    t.string   "name",                                                  :null => false
    t.string   "encrypted_password",                                    :null => false
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.boolean  "is_manager",                         :default => false, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "staffs", ["name"], :name => "index_staffs_on_name", :unique => true
  add_index "staffs", ["uuid"], :name => "index_staffs_on_uuid", :unique => true, :length => {"uuid"=>72}

  create_table "stages", :force => true do |t|
    t.binary   "uuid",       :limit => 255, :null => false
    t.binary   "lesson_id",  :limit => 255, :null => false
    t.string   "stage_type",                :null => false
    t.integer  "seq",                       :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "stages", ["uuid"], :name => "index_stages_on_uuid", :unique => true, :length => {"uuid"=>72}

  create_table "subjects", :force => true do |t|
    t.binary   "uuid",       :limit => 255, :null => false
    t.string   "name",                      :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "subjects", ["uuid"], :name => "index_subjects_on_uuid", :unique => true, :length => {"uuid"=>72}

  create_table "task1s", :force => true do |t|
    t.text     "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tasks", :force => true do |t|
    t.integer  "project_id"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "textbook_nodes", :force => true do |t|
    t.binary   "uuid",        :limit => 255,                   :null => false
    t.binary   "textbook_id", :limit => 255,                   :null => false
    t.binary   "parent_id",   :limit => 255
    t.string   "name",                                         :null => false
    t.integer  "seq",                                          :null => false
    t.boolean  "is_leaf",                    :default => true, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "textbook_nodes", ["uuid"], :name => "index_textbook_nodes_on_uuid", :unique => true, :length => {"uuid"=>72}

  create_table "textbooks", :force => true do |t|
    t.binary   "uuid",         :limit => 255, :null => false
    t.binary   "subject_id",   :limit => 255, :null => false
    t.string   "name",                        :null => false
    t.string   "publisher",                   :null => false
    t.integer  "grade",                       :null => false
    t.integer  "semester",                    :null => false
    t.binary   "root_node_id", :limit => 255, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "textbooks", ["uuid"], :name => "index_textbooks_on_uuid", :unique => true, :length => {"uuid"=>72}

end
