require 'net/smtp'

class NotificadorService
    def notificarCliente(carrinho)
        email = carrinho.emailCliente
        if !email.to_s.empty?
            message = <<MESSAGE_END
From: Loja <pedido@loja.com>
To: A Test User #{email}
Subject: SMTP e-mail test

This is a test e-mail message.
MESSAGE_END

            Net::SMTP.start('localhost') do |smtp|
                smtp.send_message message, 'pedido@loja.com', email
            end
        end
    end
end