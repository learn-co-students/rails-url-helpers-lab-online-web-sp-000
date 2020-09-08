class AddActivateColumnToStudents < ActiveRecord::Migration

  def up
    add_column :students, :active, :boolean, default: false
  end

end
