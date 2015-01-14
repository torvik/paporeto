class Article < ActiveRecord::Base
  belongs_to :category

  validates :title, :category, presence: true

  uploads_one :image, thumb: [90, 80], small: [260, 195], regular: [580, 240], full: [1280, 493]


end
