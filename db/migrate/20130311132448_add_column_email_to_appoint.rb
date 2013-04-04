class AddColumnEmailToAppoint < ActiveRecord::Migration
  def change
    add_column :appoints, :email, :string
  end
end
