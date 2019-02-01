class Item < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  include PgSearch
  pg_search_scope :search_by_name_and_category_and_brand_and_color, :against => {
    :name => 'A',
    :category => 'B',
    :brand => 'C',
    :color => 'D'}
end
