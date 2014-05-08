class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :slug

      t.timestamps
    end
    Page.create_translation_table!(
      {name: :string},
      {:migrate_data => true})
    add_index :pages, :slug, unique: true
  end
end
