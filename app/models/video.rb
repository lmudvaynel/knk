class Video < ActiveRecord::Base
  attr_accessible :position, :translations_attributes, :translations

  translates :url
  accepts_nested_attributes_for :translations

  default_scope order: 'videos.position DESC'
end
