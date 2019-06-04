class FixStatusName < ActiveRecord::Migration[5.0]
  def change
    rename_column :students, :status_active, :active
  end
end
