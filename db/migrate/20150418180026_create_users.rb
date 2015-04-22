class CreateUsers < ActiveRecord::Migration
  has_and_belongs_to_many :courses
  has_and_belongs_to_many :subjects
  has_and_belongs_to_many :tasks
  def change
    create_table :users do |t|
      t.string :name
      t.string :email ,index: true,unique: true
      t.string :password_digest
      t.string :full_name
      t.date :date_of_birth
      t.string :role

      t.timestamps null: false
    end
  end
end
