class CreateLinks < ActiveRecord::Migration
  def self.up
    create_table :links do |t|
      t.string :name
      t.boolean :approved
      t.string :url
      t.integer :category_id

      t.timestamps
    end
  end

  def self.down
    drop_table :links
  end
end
