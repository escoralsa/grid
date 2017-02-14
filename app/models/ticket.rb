class Ticket < ActiveRecord::Base
  after_save :send_email
  belongs_to :employee
  belongs_to :customer
  belongs_to :priority
  belongs_to :situation
  belongs_to :category
  belongs_to :user
  belongs_to :contact
  mount_uploader :image, ImageUploader
  before_save :default_values

  private

  def send_email
    ticket_params=Ticket.last
    ActionCorreo.bienvenido_email(ticket_params).deliver
  end

  def default_values
    #self.contact_id ||= 0
  end

    
end
