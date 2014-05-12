class CreatePlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
    	t.string :name

      t.timestamps
    end
    Playlist.create_translation_table!(
      {url: :string},
      {:migrate_data => true})
  end
end
