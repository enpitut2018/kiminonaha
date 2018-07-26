class Profile < ApplicationRecord

  mount_uploader :image, ImagesUploader
	belongs_to :user
  
  has_and_belongs_to_many :tags

  def change_tags_text_to_tags_table
  end

  def tags_text_split
    if self.tags_text
      self.tags_text.split
    else
      nil
    end
  end
end
