class Activity < ActiveRecord::Base
  belongs_to :employee
  belongs_to :ticket
  belongs_to :user
end
