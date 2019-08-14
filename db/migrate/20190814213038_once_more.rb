class OnceMore < ActiveRecord::Migration[5.2]
  def change
      drop_table :tagged_photos
  end
end
