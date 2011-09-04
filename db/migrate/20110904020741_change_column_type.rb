class ChangeColumnType < ActiveRecord::Migration
  def self.up
    rename_column :posts, :type, :typepost
  end

  def self.down
    rename_column :posts, :typepost, :type
  end
end
