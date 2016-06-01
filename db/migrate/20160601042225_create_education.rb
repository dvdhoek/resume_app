class CreateEducation < ActiveRecord::Migration
	def change
		create_table :education do |t|

			t.integer :user_id
			t.string :institution
			t.string :type
			t.string :program
			t.date :start_date
			t.date :end_date
			t.string :description
			t.string :grade        

			t.timestamps null: false
		end
	end
end
