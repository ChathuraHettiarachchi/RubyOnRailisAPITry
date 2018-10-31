class AddColumnsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :email, :string, null: false, default: "", unique: true
    add_column :users, :password_digest, :string, null: false, default: ""
  end
end
