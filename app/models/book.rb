class Book < ActiveRecord::Base
  validates :name, :author, :slug, presence: true
  validates :slug, uniqueness: true

  has_many :comments
end
