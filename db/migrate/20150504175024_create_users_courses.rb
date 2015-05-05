class CreateUsersCourses < ActiveRecord::Migration
  def change
    create_table :users_courses do |t|
      t.integer :user_id
      t.integer :course_id
      t.integer :assigned_by
      t.datetime :time_assigned
      t.string :complete
      t.datetime :time_complete
      t.string :confirm
      t.datetime :time_confirm
      t.integer :confirmed_by
      t.references :user , index: true
      t.references :course , index: true
      t.references :supervisors_courses , index: true

      t.timestamps 
    end
  end
end
