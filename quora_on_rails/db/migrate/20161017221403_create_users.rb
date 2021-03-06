class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name, :unique => true
      t.string :email,  :unique => true
      t.string :password_digest
      t.boolean :admin, default: false
      t.timestamps
    end
  end
end
