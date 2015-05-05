class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email ,index: true,unique: true
      t.string :password_digest
      t.string :full_name
      t.date :date_of_birth
      t.string :role

      t.timestamps 
    end
  end
end
