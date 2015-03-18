class Item < ActiveRecord::Base
  belongs_to :category
  def self.search(query)
  where("title like ?", "%#{query}%")
  end
end
