class Link < ActiveRecord::Base
  belongs_to :Category

  scope :approved, where("approved = ?", true)

end
