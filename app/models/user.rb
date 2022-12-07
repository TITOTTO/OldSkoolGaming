class User < ApplicationRecord
  validates :name, :encrypted_password, :email, presence: true
  validates :name, length: { minimum: 2 }
  validates :encrypted_password, length: { in: 5..20 }
  validates :encrypted_password, confirmation: true, unless: -> { encrypted_password.blank? }
  validates :email, uniqueness: true
    
  #after_create :welcome_send
  #after_create :create_cart
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :avatar
  has_many :my_articles, foreign_key: 'seller_id', class_name: "Article"
  has_many :my_purchases, foreign_key: 'buyer_id', class_name: "Article"
  has_one :cart
  has_many :comments


  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end
  def create_cart
    Cart.create(user: self, total: 0)
  end
  
end
