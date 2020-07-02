class RemoveStatusToStudents < ActiveRecord::Migration
    def change
      remove_column :students, :status, :integer, default: 0
    end
  end