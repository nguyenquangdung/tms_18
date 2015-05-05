class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.text :description
      t.integer :created_by
      t.datetime :begin
      t.datetime :end
      t.references :user, index: true

      t.timestamps 
    end
    add_foreign_key :courses, :users
  end
end
