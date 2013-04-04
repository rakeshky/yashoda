class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :username
      t.string :password
      t.string :email
      t.string :name

      t.timestamps
    end
  end
end
