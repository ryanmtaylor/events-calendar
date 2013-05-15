class Event < ActiveRecord::Base
  class Category < ActiveRecord::Base
    attr_accessible :name
    belongs_to :event
    validates :name, :presence => true
  end

  AGE_CATEGORIES = ['All ages', '18+', '21+']

  belongs_to :venue
  has_many :categories
  attr_accessible :venue_id, :category_ids
  attr_accessible :age_limit, :cost, :date, :description, :end_time, :image_url, :is_published, :is_small, :start_time, :title, :url, :url_text
  validates :cost, :numericality => {:greater_than => 0.01, :less_than => 1_000}, :allow_nil => true#, :with => /^\d+\.?\d{0,2}$/
  validates :age_limit, :inclusion => {:in => AGE_CATEGORIES}
  validates :url, :format => URI::regexp(%w(http https)), :allow_blank => true
  validates :url_text, :presence => true, :if => :url

  def small?; is_small end
  def published?; is_published end
  def draft?; !published? end
  def url?; !!url end

#  def formatted_cost; number_to_currency(cost) end
#  def rounded_cost; number_to_currency(cost.to_i) end

  def categories_sentence; self.categories.map(&:name).to_sentence end

  def has_required_fields?
    (venue && date && start_time && end_time && title && twitter) &&
      (small? || (!small? && image_url && description))
  end
end
