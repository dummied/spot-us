class AddHideOptionalMsgFlagToUser < ActiveRecord::Migration
  def self.up     
    add_column :users, :hide_optional_msg, :boolean, :default => false, :null => false
  end

  def self.down  
    remove_column :users, :hide_optional_msg
  end
end
