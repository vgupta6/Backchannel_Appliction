class CreateUserAccounts < ActiveRecord::Migration
  def change
    create_table :user_accounts do |t|
      t.string :name
      t.string :userName
      t.string :encrypted_password
      t.string :email
      t.date :dateOfBirth
      t.text :address
      t.string :phNum
      t.string :gender
      t.text :professionalStatus
      t.text :interests
      t.boolean :admin

      t.timestamps
    end
  end
end
