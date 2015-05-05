class CreateUsersSubjects < ActiveRecord::Migration
  def change
    create_table :users_subjects do |t|
      t.integer :user_id
      t.integer :subject_id
      t.integer :assigned_by
      t.datetime :time_assigned
      t.string :complete
      t.datetime :time_complete
      t.string :confirm
      t.datetime :time_confirm
      t.integer :confirmed_by
      t.references :user , index: true
      t.references :subject , index: true
      t.references :supervisors_courses , index: true

      t.timestamps 
    end
  end
end
