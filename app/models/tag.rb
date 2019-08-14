class Tag < ApplicationRecord
  # this has many needs to be the literal name of the table
  has_many :fuck_tags_fuck_everything
  has_many :photos, :through => :fuck_tags_fuck_everything
end
