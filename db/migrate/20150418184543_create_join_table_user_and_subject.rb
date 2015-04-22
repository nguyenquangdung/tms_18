class CreateJoinTableUserAndSubject < ActiveRecord::Migration
  def change
  	create_join_table :users, :subjects do |t|
      t.index [:user_id, :subject_id]
      t.index [:subject_id, :user_id]
      t.integer :assigned_by
      t.datetime :time_assigned
      t.string :complete
      t.datetime :time_complete
	  t.string :confirm
      t.datetime :time_confirm
      t.integer :confirmed_by
    end
  end
end
