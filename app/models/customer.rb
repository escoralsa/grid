class Customer < ActiveRecord::Base
  has_many :appliances
  has_many :reports
  has_many :contacts
  has_many :pace_program_customers

  def full_name
    "#{name} #{accnumber}"
  end
end
