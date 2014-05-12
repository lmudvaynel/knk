# encoding: utf-8

Playlist.reset_column_information
Playlist.create!(name: 'Плейлист на главной', translations_attributes: [
  { locale: 'ru', url: 'http://www.youtube.com/playlist?list=PLClDtwYY69cHpE2gcWqLC6DOkQ6AC52jP' },
  { locale: 'en', url: 'http://www.youtube.com/playlist?list=PLClDtwYY69cHpE2gcWqLC6DOkQ6AC52jP' }
])