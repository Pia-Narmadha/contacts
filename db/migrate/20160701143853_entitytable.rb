class Entitytable < ActiveRecord::Migration
  def change
	create_table :entities do |t|
	t.string "FirstName",:null=>false
	t.string "LastName"
	t.date "DOB"
	t.string "PhoneNumber",:null=>false,:limit=>15
	t.string "Address"
	t.string "email"
    end
  end
end
