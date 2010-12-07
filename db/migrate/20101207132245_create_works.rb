class CreateWorks < ActiveRecord::Migration
  def self.up
    create_table :works do |t|
      t.string :namework
      t.text :description
      t.integer :discipline_id
      t.float :price
      t.integer :teacher_id

      t.timestamps
    end
  end

  def self.down
    drop_table :works
  end
end
