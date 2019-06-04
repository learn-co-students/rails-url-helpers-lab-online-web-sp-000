class AddStatusToStudents < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :status_active, :boolean, :default => false
  end
end
