class GodDammitFkRails < ActiveRecord::Migration[5.2]
  def change
    drop_table :photos_tags
    create_table :photo_tags do |t|
      t.belongs_to :photos
      t.belongs_to :tags
    end
  end
end
