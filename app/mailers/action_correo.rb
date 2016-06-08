class ActionCorreo < ApplicationMailer
  
  def bienvenido_email(ticket_params)
  @name = ticket_params['contactName']

  @year = ticket_params['date(1i)']
  @month = ticket_params['date(2i)']
  @day= ticket_params['date(3i)']

  @customer_id = ticket_params['customer_id']
  c = Customer.find(@customer_id)
  @customer = c.name

  @notas = ticket_params['notes']

  @email = c.email
  mail(to: @email , subject: 'Soporte Tecnico Blue Sage')
  end

end
