class SetStudentDefault < ActiveRecord::Migration
  def self.up
    change_column :students, :active, :boolean, :default => FALSE
  end

  def self.down
    # You can't currently remove default values in Rails
    raise ActiveRecord::IrreversibleMigration, "Can't remove the default"
  end
end