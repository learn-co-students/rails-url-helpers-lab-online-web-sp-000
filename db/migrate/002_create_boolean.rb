class CreateBoolean < ActiveRecord::Migration
    def change
      add_column :students, :active, :boolean, default: false
    end
  end