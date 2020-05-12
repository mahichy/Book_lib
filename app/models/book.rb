class Book < ApplicationRecord
  belongs_to :user
  has_many :photos

  validates :subject, presence: true
  validates :book_type, presence: true
  validates :author_name, presence: true
  validates :pages, presence: true

  def cover_photo()
  	if self.photos.length > 0
  		self.photos[0].image.url()
  	else
  		"blank.jpg"
  	end
  end

 
  
end
