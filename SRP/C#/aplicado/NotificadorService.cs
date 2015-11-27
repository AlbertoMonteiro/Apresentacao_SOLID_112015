public class NotificadorService
{
	public void NotificarCliente(Carrinho carrinho)
	{
		var emailCliente = carrinho.EmailCliente;
		if(string.IsNullOrWhiteSpace(emailCliente))
			return;
			
		using(var email = new MailMessage("pedido@loja.com", emailCliente))
		using(var smtp = new SmtpClient("localhost"))
		{
			email.Body = "This is a test e-mail message.";
			email.Subject("SMTP e-mail test");
			smtp.Send(email);
		}
	}	
}