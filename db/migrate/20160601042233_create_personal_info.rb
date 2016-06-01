class CreatePersonalInfo < ActiveRecord::Migration
	def change
		create_table :personal_info do |t|

			t.integer :user_id
			t.string :dob
			t.string :first_name
			t.string :last_name			
			t.string :gender
			t.string :contact_number
			t.string :address_street
			t.string :address_city
			t.string :address_country
			t.timestamps null: false
		end
	end
end
