class AddPwNeedsUpdateBooleanToUser < ActiveRecord::Migration
  def self.up 
    add_column :users, :pw_needs_update, :boolean, :default => false, :null => false
  end

  def self.down 
    remove_column :users, :pw_needs_update
  end
end
