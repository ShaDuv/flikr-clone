class Uuuuugh < ActiveRecord::Migration[5.2]
  def change
    drop_table :photo_tags
    create_table :photos_tags
  end
end
