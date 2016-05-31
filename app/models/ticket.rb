class Ticket < ActiveRecord::Base
  belongs_to :employee
  belongs_to :customer
  belongs_to :priority
  belongs_to :situation
  belongs_to :category
  belongs_to :user
  mount_uploader :image, ImageUploader

    
end
