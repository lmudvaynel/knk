class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
    	t.integer :position

      t.timestamps
    end
    add_index :videos, :position
    Video.create_translation_table!(
      {url: :string},
      {:migrate_data => true})
  end
end
