class AddTypeToPosts < ActiveRecord::Migration
  def self.up
    add_column :posts, :type, :string
    add_column :posts, :image_url, :string
  end

  def self.down
    remove_column :posts, :image_url
    remove_column :posts, :type
  end
end
