class AddMiscToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :profession, :string
  	add_column :users, :location, :string
  	add_column :users, :work_hours, :integer
  	add_column :users, :biography, :string
  	add_column :users, :work_area, :string
  	add_column :users, :school, :string
  end
end
