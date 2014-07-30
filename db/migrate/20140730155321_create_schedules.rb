class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :p1
      t.string :p2
      t.string :p3
      t.string :p4
      t.string :p5
      t.string :p6
      t.string :p7
      t.string :p8
      t.string :p9
      t.string :p10
      t.integer :teacher_id

      t.timestamps
    end
  end
end
