class CreateTeachers < ActiveRecord::Migration
  def self.up
    create_table :teachers do |t|
      t.string :nameteacher

      t.timestamps
    end
  end

  def self.down
    drop_table :teachers
  end
end
