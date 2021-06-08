class AddActiveAttribute < ActiveRecord::Migration

    def change
        add_column :students, :active, :boolean, default: false
        #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
    end

end