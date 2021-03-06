class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :name, presence: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :pictures, as: :picturable
  def admin?
    role == "admin"
  end    

  def user?
    role == "user"
  end 

  def guest?
    role == "guest"
  end 
end
