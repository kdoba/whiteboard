class CreateCourseTeachingAssistant < ActiveRecord::Migration
  def up
    create_table "course_teaching_assistants", :id => false, :force => true do |t|
      t.integer  "course_id"
      t.integer  "user_id"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "course_teaching_assistants", ["course_id", "user_id"], :name => "index_course_teaching_assistants_on_course_id_and_person_id", :unique => true
    add_index "course_teaching_assistants", ["course_id"], :name => "index_course_teaching_assistants_on_course_id"
  end

  def down
    drop_table :course_teaching_assistants
  end
end
