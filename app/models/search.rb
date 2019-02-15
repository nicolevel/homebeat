class Search < ApplicationRecord

  def search_items
    items = Item.all
    items = items.where(["category LIKE ?", category]) if category.present?
    items = items.where(["price >= ?", min_price]) if min_price.present?
    items = items.where(["price <= ?", max_price]) if max_price.present?
    items = items.where(["brand LIKE ?", brand]) if brand.present?
    items = items.where(["color LIKE ?", color]) if color.present?

    return items
  end
end
