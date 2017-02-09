class Attached < ActiveRecord::Base
  belongs_to :ticket
  mount_uploader :file, ImageUploader
end
