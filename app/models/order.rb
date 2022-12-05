class Order < ApplicationRecord
    belongs_to :user
    has_many :article_orders
    has_many :articles, through: :article_orders
end
