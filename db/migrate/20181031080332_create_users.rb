class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name, null: false, default: ""
      t.string :last_name
      t.string :address, null: false, default: ""
      t.text :description
      t.string :phone, null: false, default: ""
      t.text :token

      t.timestamps
    end
  end
end
