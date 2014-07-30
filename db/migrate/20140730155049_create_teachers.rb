class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :email
      t.string :department
      t.text :bio
      t.string :image_url
      t.string :location

      t.timestamps
    end
  end
end
