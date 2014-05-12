class Playlist < ActiveRecord::Base
  attr_accessible :name, :translations_attributes, :translations

  translates :url
  accepts_nested_attributes_for :translations
end
