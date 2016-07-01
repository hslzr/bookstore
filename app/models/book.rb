class Book < ActiveRecord::Base
  validates :name, :author, :slug, presence: true
  validates :slug, uniqueness: true

  has_many :comments
  has_many :pictures, as: :picturable

  before_save :upcase_slug
  before_destroy :verify_if_theres_comments

  private

  def verify_if_theres_comments
    !(comments.length > 0)
  end

  def upcase_slug
    self.slug = slug.upcase
  end
end
