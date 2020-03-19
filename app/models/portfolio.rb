class Portfolio < ApplicationRecord
  include Placeholder
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.django
    where(subtitle: 'Django')
  end

  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }

  after_initialize :set_defaults 

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: '700', width: '300')
    self.thumb_image ||= Placeholder.image_generator(height: '250', width: '150')
  end

end
