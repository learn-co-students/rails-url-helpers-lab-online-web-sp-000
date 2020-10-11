# Edit 'Students' table
# Add column to 'Students' table called "active"
# with a data type of boolean
# set the value to false by default

class ChangeStudentsTable < ActiveRecord::Migration
    def change 
        add_column :students, :active, :boolean, :default => false
    end
end
