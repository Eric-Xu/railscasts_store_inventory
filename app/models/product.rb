class Product < ActiveRecord::Base
  attr_accessible :name, :price_in_cents, :price_in_dollars, :released_at, :released_at_text, :category_id, :new_category, :tag_names, :age_group_ids
  belongs_to :category
  has_many :taggings
  has_many :tags, through: :taggings
  has_many :age_groupings
  has_many :age_groups, through: :age_groupings

  attr_writer :released_at_text, :tag_names
  attr_accessor :new_category

  validate :check_released_at_text

  before_save :save_released_at_text
  before_save :create_category
  before_save :save_tag_names

  def price_in_dollars
  	price_in_cents.to_d/100 if price_in_cents
  end

  def price_in_dollars=(dollars)
  	self.price_in_cents = dollars.to_d * 100 if dollars.present?
  end

  def released_at_text
  	@released_at_text || released_at.try(:strftime, "%Y-%m-%d %H:%M:%S")
  end

  def save_released_at_text
  	self.released_at = Time.zone.parse(@released_at_text) if @released_at_text.present?
  end

  def check_released_at_text
  	if @released_at_text.present? && Time.zone.parse(@released_at_text).nil?
  		errors.add :released_at_text, "cannot be parsed"
  	end
  rescue ArgumentError
  	errors.add :released_at_text, "is out of range"
  end

  def create_category
    self.category = Category.create(name: new_category) if new_category.present?
  end

  def tag_names
    @tag_names || self.tags.pluck(:name).join(" ")
  end

  def save_tag_names
    if @tag_names
      self.tags = @tag_names.split.map { |name| Tag.where(name: name).first_or_create! }
    end
  end
end