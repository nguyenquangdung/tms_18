class CreateSupervisorsCourses < ActiveRecord::Migration
  def change
    create_table :supervisors_courses do |t|
      t.integer :user_id
      t.integer :course_id
      t.references :user
      t.references :course

      t.timestamps 
    end
  end
end
