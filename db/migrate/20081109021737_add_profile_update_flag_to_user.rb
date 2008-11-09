class AddProfileUpdateFlagToUser < ActiveRecord::Migration
  def self.up   
    add_column :users, :profile_needs_update, :boolean, :default => false, :null => false
  end

  def self.down  
    remove_column :users, :profile_needs_update
  end
end
