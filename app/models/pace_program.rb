class PaceProgram < ActiveRecord::Base
  has_many :pace_program_customers
  has_many :pace_programs
end
