class Customer < ActiveRecord::Base
  has_many :appliances
  has_many :reports
end
