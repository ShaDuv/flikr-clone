class Photo < ApplicationRecord
  belongs_to :user
  has_one_attached :image_file

  # this is a special method!! very useful!!
  scope :lilbub, -> {where(title:"Lil Bub!")}


end
