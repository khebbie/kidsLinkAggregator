class Link < ActiveRecord::Base
  belongs_to :Category
  validates_presence_of :name, :url, :category_id
  validates_format_of :url, :with => /^(http|https):\/\/.*\.[a-zA-Z]{2,3}/
  scope :approved, where("approved = ?", true)

end
