class Page < ActiveRecord::Base
  attr_accessible :slug,  :translations_attributes, :translations

  translates :name
end
