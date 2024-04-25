class Post < ApplicationRecord
  has_many :post_sections
  has_many :sections, through: :post_sections
end
