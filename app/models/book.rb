class Book < ApplicationRecord
  belongs_to :user
  has_many :photos

  validates :subject, presence: true
  validates :book_type, presence: true
  validates :author_name, presence: true
  validates :pages, presence: true

  mount_uploader :image, ImageUploader 
  
end
