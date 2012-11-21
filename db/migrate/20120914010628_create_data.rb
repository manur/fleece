class CreateData < ActiveRecord::Migration
  def self.up
    create_table :user_accounts do |t|
      t.string :username
      t.timestamps
    end
  end

  def self.down
    drop_table :user_accounts
  end
end
