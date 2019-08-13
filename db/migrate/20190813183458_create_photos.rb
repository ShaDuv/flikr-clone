class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string :title
      t.text :caption
      t.string :image_path
      t.belongs_to :user, index: true, foreign_key: true
      t.timestamps
    end
  end
end
