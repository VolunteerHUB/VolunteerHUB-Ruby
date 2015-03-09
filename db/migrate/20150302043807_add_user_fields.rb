class AddUserFields < ActiveRecord::Migration
  def change
    change_table :users do |t|
      # Basic inforation
      t.string :username, null: true, default: ""
      t.string :location, null: true, default: ""
      t.text :biography, null: true, default: ""
    end

    add_index :users, :username, unique: true
  end
end
