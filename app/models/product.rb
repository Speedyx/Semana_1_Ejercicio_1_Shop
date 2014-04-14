class Product < ActiveRecord::Base
    has_many :line_items
    has_many :orders, through: :line_items

    validates :name, :added_at, :units, :price, presence: true
    validates :name, uniqueness:true
    validates_numericality_of :units, :only_integer => true, :greater_than_or_equal_to => 0
    validates_numericality_of :price, :greater_than_or_equal_to => 0
    validates :category, format: {with: /\A\b(books|music & films|electronics|home|toys|clothes,
food)\z/, message: "books, music & films, electronics, home, toys, clothes,
food, or empty."}, allow_blank: true

  scope :category, ->(category) {where("category like ?", category) unless category.blank?}
  scope :units, ->(units) { where("units >= ?", units) unless units.blank?}
  scope :added_at, ->(added_at) { where("added_at like ?","%#{added_at}%") unless added_at.blank?}
  scope :manufacturer, ->(manufacturer) { where("manufacturer like ?", manufacturer) unless manufacturer.blank?}
  scope :price, ->(min, max) { where("price between ? and ?", min, max) unless min.blank? || max.blank?}

  def self.filter(category,units,added_at,manufacturer,min,max)
    category(category).
    units(units).
    added_at(added_at).
    manufacturer(manufacturer).
    price(min,max)
  end

end