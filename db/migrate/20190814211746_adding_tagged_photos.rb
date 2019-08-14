class AddingTaggedPhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :tagged_photos do |t|
      t.belongs_to :photos
      t.belongs_to :tags
    end
  end
end
