class AddTagsTextToProfile < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :tags_text, :string
  end
end
