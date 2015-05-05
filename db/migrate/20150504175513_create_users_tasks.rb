class CreateUsersTasks < ActiveRecord::Migration
  def change
    create_table :users_tasks do |t|
      t.integer :user_id
      t.integer :task_id
      t.string :complete
      t.datetime :time_complete
      t.string :confirm
      t.datetime :time_confirm
      t.integer :confirmed_by
      t.references :user , index: true
      t.references :task , index: true
      t.references :supervisors_courses , index: true

      t.timestamps 
    end
  end
end
