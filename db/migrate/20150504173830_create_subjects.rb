class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :name
      t.text :description
      t.integer :created_by
      t.references :user, index: true

      t.timestamps 
    end
    add_foreign_key :subjects, :users
  end
end
