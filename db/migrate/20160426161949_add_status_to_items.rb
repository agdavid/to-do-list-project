class AddStatusToItems < ActiveRecord::Migration
  def change
    add_column :items, :status, :integer, :default => 0 #default of 'incomplete'
  end
end
