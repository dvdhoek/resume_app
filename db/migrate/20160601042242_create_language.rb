class CreateLanguage < ActiveRecord::Migration
  def change
    create_table :language do |t|

    	t.integer :user_id
    	t.string :name
    t.string :level
    t.integer :written
    t.integer :spoken
      t.timestamps null: false
    end
  end
end
