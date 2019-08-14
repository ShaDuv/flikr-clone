class PhotosTags < ActiveRecord::Migration[5.2]
  def change
    create_table :photos_tags, id: false do |x|
      x.belongs_to :photos 
      x.belongs_to :tags
    end
  end
end
