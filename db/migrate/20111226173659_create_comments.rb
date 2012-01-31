class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.integer :articleID
      t.integer :parentID
      t.integer :userID
      t.string :text

      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
