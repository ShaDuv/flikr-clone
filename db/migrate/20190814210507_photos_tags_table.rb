class PhotosTagsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :photos_tags do |t|
      t.belongs_to :photos, index: true, foreign_key: true
      t.belongs_to :tags, index: true, foreign_key: true
    end
  end
end
