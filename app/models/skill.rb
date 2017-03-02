class Skill < ApplicationRecord
  include Placeholder
  validates_presence_of :title, :percent_utilized

   after_initialize :set_defaults

 #@hat set_defaults mean shortcut below
 #if self.main_image == nil
 # self.main_image = "http://placehold.it/600x400"
 #end
  def set_defaults
    self.badge ||= Placeholder.image_generator(height: '250', width: '250')
  end
end
