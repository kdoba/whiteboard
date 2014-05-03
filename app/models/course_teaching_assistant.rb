class CourseTeachingAssistant < ActiveRecord::Base
  set_table_name "course_teaching_assistants"

  belongs_to :user
  belongs_to :course
end