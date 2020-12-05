class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      add_column :users, email, string
    end
  end
end