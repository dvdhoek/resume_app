class CreateJob < ActiveRecord::Migration
  def change
    create_table :jobs do |t|

    t.date :start_date
    t.date :end_date
    t.string :position
    t.string :company
    t.string :description
    t.string :location
    t.string :link
    t.integer :user_id
    t.timestamps null: false
    end
  end
end
