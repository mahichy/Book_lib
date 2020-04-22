class Book < ApplicationRecord
  belongs_to :user

  validates :subject, presence: true
  validates :book_type, presence: true
  validates :author_name, presence: true
  validates :pages, presence: true
  
end
