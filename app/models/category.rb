class Category < ActiveRecord::Base
  has_many :Links, :dependent => :destroy
end
