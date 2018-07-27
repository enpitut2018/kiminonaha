class Profile < ApplicationRecord

  mount_uploader :image, ImagesUploader
	belongs_to :user

  has_and_belongs_to_many :tags

  def change_event_to_tags_table
    if ev = self.Event
      change_element_to_tags ev
    end
  end

  def change_place_to_tags_table
    if pl = self.Place
      change_element_to_tags pl
    end
  end

  def change_tags_text_to_tags_table
    # TODO: 全角スペース
    if tags_texts = self.tags_text_split
      tags_texts.each do |tag_text|
        change_element_to_tags tag_text
      end
    end
  end

  def change_element_to_tags(el)
    if el
      # タグがすでに存在する場合
      if t = Tag.find_by(name: el)
        # 該当タグがつけられていない場合
        if !self.tags.include?(t)
          self.tags << t
        end
      # タグが存在しない場合
      else
        t = Tag.create(name: el, user_id: self.user.id)
        self.tags << t
      end
    end
  end

  def tags_text_split
    if self.tags_text
      self.tags_text.split
    else
      nil
    end
  end
end
