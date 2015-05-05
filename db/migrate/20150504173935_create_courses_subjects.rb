class CreateCoursesSubjects < ActiveRecord::Migration
  def change
    create_table :courses_subjects do |t|
      t.integer :course_id
      t.integer :subject_id
      t.references :course, index: true
      t.references :subject, index: true

      t.timestamps 
    end
    add_foreign_key :courses_subjects, :courses
    add_foreign_key :courses_subjects, :subject
  end
end
