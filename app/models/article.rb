class Article < ApplicationRecord
  validates :title, :content, :price, :console, :typeofgame, presence: true
  validates :price, numericality: { message: "%{value} semble incorrect" }

    
    enum :typeofgame, [:Jeux_video, :Console]
    enum :console, [:SNES, :PS1, :SEGA]
    belongs_to :seller, class_name: "User"
    belongs_to :buyer, class_name: "User", optional: true
    has_many_attached :images
    has_many :article_carts
    has_many :carts, through: :article_carts
    has_many :article_orders
    has_many :orders, through: :article_orders
    has_many :comments, as: :commentable
    has_many :thecomments
end
