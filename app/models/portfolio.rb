class Portfolio < ApplicationRecord
  validates_presence_to :title, :body, :main_image, :thumb_image
end
