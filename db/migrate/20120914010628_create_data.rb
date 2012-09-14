class CreateData < ActiveRecord::Migration
  def self.up
    create_table :data do |t|
      t.text :content
      t.integer :user_account_id
      t.timestamps
    end

    create_table :user_accounts do |t|
      t.string :username
      t.timestamps
    end

    create_table :drawings do |t|
      t.timestamps
    end

    create_table :data_drawings, :id => false do |t|
      t.integer :drawing_id
      t.integer :datum_id
    end

  end

  def self.down
    drop_table :user_accounts
    drop_table :data
    drop_table :data_drawings
    drop_table :drawings
  end
end
