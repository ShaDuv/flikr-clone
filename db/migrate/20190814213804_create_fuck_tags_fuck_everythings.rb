class CreateFuckTagsFuckEverythings < ActiveRecord::Migration[5.2]
  def change
    create_table :fuck_tags_fuck_everythings do |t|
      t.belongs_to :photo
      t.belongs_to :tag

    end
  end
end
