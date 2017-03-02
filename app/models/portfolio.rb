class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.angular
    where(subtitle: 'Angular')
  end

  scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }
  #callback for defaults
  after_initialize :set_defaults

 #@hat set_defaults mean shortcut below
 #if self.main_image == nil
 # self.main_image = "http://placehold.it/600x400"
 #end
  def set_defaults
    self.main_image ||= "http://placehold.it/600x400"
    self.thumb_image ||= "http://placehold.it/350x200"
  end
end


