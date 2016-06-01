class CreatePersonalInfo < ActiveRecord::Migration
  def change
    create_table :personal_info do |t|

    t.integer :user_id
        t.date :start_date
        t.date :end_date
    	t.string :position
    	t.string :company
    	t.string :description
    	t.string :location
    	t.string :link
      t.timestamps null: false
    end
  end
end
