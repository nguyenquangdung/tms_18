class CreateSubjects < ActiveRecord::Migration
  has_and_belongs_to_many :users
  has_and_belongs_to_many :courses

  def change
    create_table :subjects do |t|
      t.string :name
      t.text :description
      t.integer :created_by

      t.timestamps null: false
    end
  end
end
