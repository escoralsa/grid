class Customer < ActiveRecord::Base
  has_many :appliances
  has_many :reports

  def full_name
    "#{accnumber} #{name}"
  end
end
