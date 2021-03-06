class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string :title, :null => false
      t.text :content, :null => false
      t.references :user, :null => false
      t.boolean :published, :null => false
      t.string :permalink, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
