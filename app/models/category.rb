class Category < ActiveRecord::Base
  has_many :items
  def self.search_items(query)
    items = []
    Category.where('title like?', "%#{query}%").each do |c|
          items.push(c.items)
        end
        items.flatten!
  end
end
