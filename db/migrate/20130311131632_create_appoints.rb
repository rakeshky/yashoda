class CreateAppoints < ActiveRecord::Migration
  def change
    create_table :appoints do |t|
      t.string :username
      t.string :phone
      t.string :department
      t.string :role

      t.timestamps
    end
  end
end
