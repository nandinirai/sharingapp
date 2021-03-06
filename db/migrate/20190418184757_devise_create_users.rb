class DeviseCreateUsers < ActiveRecord::Migration[4.2]
  def self.up 
    create_table(:users) do |t| 
      t.database_authenticatable :null => false
      t.recoverable 
      t.rememberable 
      t.trackable
    
      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at
    
      ## Rememberable
      t.datetime :remember_created_at
    end
  
    add_index :users, :email,                :unique => true
    add_index :users, :reset_password_token, :unique => true
    # add_index :users, :confirmation_token,   :unique => true 
    # add_index :users, :unlock_token,         :unique => true 
  end
  
  def self.down 
    drop_table :users
  end
end