class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :book

  validates :user, :book, :description, presence: true
end
