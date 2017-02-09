class ActionCorreo < ApplicationMailer
  
  def bienvenido_email(ticket_params)


  @id = ticket_params['id']

  @date = ticket_params['date']

  @customer_id = ticket_params['customer_id']
  customer = Customer.find(@customer_id)
  @customer = customer.name
  @email = customer.email
  @notas = ticket_params['notes']

  @contact_id = ticket_params['contact_id']
  contact = Contact.find(@contact_id)
  @contact = contact.name
  @contact_email = contact.email

   @emails = [@contact_email, @email]

    @emails.each do |email|
      mail(to: email, subject: "Soporte Tecnico Bluesage")
    end
  end

end


