class WithFeeling < ActiveRecord::Migration[5.2]
  def change
    create_table :tagged_photos do |t|
      t.belongs_to :tags, index: true
      t.belongs_to :photos, index: true
    end
  end
end
