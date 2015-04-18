class CreateJoinTableCourseSubject < ActiveRecord::Migration
  def change
    create_join_table :courses, :subjects do |t|
      # t.index [:course_id, :subject_id]
      # t.index [:subject_id, :course_id]
    end
  end
end
