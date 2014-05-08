# encoding: utf-8

pages_slugs = [
  'index',
  'characters',
  'story',
  'video',
  'contacts'
]

Page.reset_column_information
pages_slugs.each do |page_slug|
  Page.create! slug: page_slug
end