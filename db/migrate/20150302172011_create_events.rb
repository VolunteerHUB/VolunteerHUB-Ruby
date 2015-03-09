class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name, null: false, default: ""
      t.text :brief, null: false, default: ""
      t.text :description, null: false, default: ""

      t.datetime :start_date
      t.datetime :end_date

      t.string :location, null: false, default: ""
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
