class CreateUser < ActiveRecord::Migration
  
  has_many :jobs

  def change
    create_table :users do |t|

    	t.string :email
    	t.password :password

      t.timestamps null: false
    end
  end
end
