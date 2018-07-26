class CreateJoinTableTagsProfiles < ActiveRecord::Migration[5.1]
  def change
    create_join_table :tags, :profiles do |t|
      # t.index [:tag_id, :profile_id]
      # t.index [:profile_id, :tag_id]
    end
  end
end
