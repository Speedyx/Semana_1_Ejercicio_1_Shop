class Product < ActiveRecord::Base
    has_many :line_items
    has_many :orders, through: :line_items

    validates_presence_of :name
    validates_uniqueness_of :name
    validates_presence_of :added_at
    validates_presence_of :units
    validates_numericality_of :units, :only_integer => true, :greater_than_or_equal_to => 0
    validates_presence_of :price
    validates_numericality_of :price, :greater_than_or_equal_to => 0
    validates_format_of :category, :with => /\A\b(books|music & films|electronics|home|toys|clothes,
food)\z/, :allow_blank => true, :message => "books, music & films, electronics, home, toys, clothes,
food, or empty."

end