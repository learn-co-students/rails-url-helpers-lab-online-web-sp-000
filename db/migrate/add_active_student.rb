class AddActiveStudent < ActiveRecord::Base[5.0]
    def change 
        add_column :students, :active, :boolean, default: false
    end
end