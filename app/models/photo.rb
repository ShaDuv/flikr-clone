class Photo < ApplicationRecord
  belongs_to :user
  has_one_attached :image_file

  # this has many needs to be the literal name of the table
  has_many :fuck_tags_fuck_everything
  has_many :tags, :through => :fuck_tags_fuck_everything


  # this is a special method!! very useful!!
  scope :lilbub, -> {where(title:"Lil Bub!")}


end
