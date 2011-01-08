class Links < ActiveRecord::Migration
  def self.up
    add_index :links, :category_id
  end

  def self.down
  end
end
