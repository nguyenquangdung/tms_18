class CreateTasks < ActiveRecord::Migration
  has_and_belongs_to_many :users
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.integer :created_by
      t.integer :subject_id

      t.timestamps null: false
    end
  end
end
