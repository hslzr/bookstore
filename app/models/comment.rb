class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :book

  validates :user, :book, presence: true
end
