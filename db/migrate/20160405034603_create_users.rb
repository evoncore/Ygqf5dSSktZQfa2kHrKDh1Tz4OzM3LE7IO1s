class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string  :login
      t.string  :name
      t.string  :email
      t.string  :password_digest
      t.boolean :admin, default: false
      t.string  :remember_token

      t.timestamps null: false
    end
    add_index :users, :remember_token
    add_index :users, :login, unique: true
  end
end
