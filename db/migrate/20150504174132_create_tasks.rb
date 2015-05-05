class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.integer :created_by
      t.integer :subject_id
      t.references :user, index: true
      t.references :subject, index: true

      t.timestamps 
    end
    add_foreign_key :tasks, :users
    add_foreign_key :tasks, :subjects
  end
end
