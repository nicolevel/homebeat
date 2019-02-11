class Item < ApplicationRecord
  mount_uploader :photo, PhotoUploader

    def self.filter(filter)
    if filter
      where(category_id: filter)
    end
  end
end
