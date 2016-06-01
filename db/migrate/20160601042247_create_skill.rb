class CreateSkill < ActiveRecord::Migration
	def change
		create_table :skills do |t|

			t.integer :user_id
			t.string :title
			t.integer :rating
			t.string :endorsements
			t.timestamps null: false
		end
	end
end
