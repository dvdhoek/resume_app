class CreateProject < ActiveRecord::Migration
	def change
		create_table :projects do |t|

			t.integer :user_id
			t.date :start_date
			t.date :end_date
			t.string :link
			t.string :description
			t.string :contract_Type
			t.string :client
			


			t.timestamps null: false
		end
	end
end
