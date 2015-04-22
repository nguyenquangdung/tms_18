class CreateCourses < ActiveRecord::Migration
  has_and_belongs_to_many :users
  has_and_belongs_to_many :subjects


  def change
    create_table :courses do |t|
      t.string :name
      t.text :description
      t.integer :created_by
      t.datetime :begin
      t.datetime :end

      t.timestamps null: false
    end
  end
end
