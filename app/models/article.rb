class Article < ApplicationRecord
  validates :title, length: {maximum: 30, too_long: "%{count} caractère autorisés pour le titre" }, presence: true
  validates :content, length: { maximum: 250,
    too_long: "%{count} caractère autorisés pour la description" }, presence: true
  validates :price, :console, :typeofgame, presence: true
  validates :price, numericality: { message: "%{value} semble incorrect" }

    
    enum :typeofgame, [:Non_fonctionnel, :Mauvais_état, :Bon_état, :Neuf]
    enum :console, [:ATARI_2600, :ATARI_5200, :ATARI_7800, :COLECO_VISION, :LYNX, :JAGUAR, :NES, :SNES, :N64, :GAMEBOY, :GAMEBOY_COLOR, :GAMEBOY_ADVANCE, :GAMECUBE, :MASTER_SYSTEME, :MEGADRIVE, :GAMEGEAR, :SEGA_SATURN, :DREAMCAST, :NEOGEO_CD, :NEGEO_POCKET, :PS1, :PS2 ]
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
