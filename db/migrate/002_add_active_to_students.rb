class AddActiveToStudents < ActiveRecord::Migration
  add_column :students, :active, :boolean
end