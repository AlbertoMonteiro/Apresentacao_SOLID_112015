require 'ostruct'
require 'net/smtp'

class FormasPagamento
    CARTAOCREDITO = 1   
end

class Pedido
    def comprar(carrinho, detalhesDoPagamento, deveNotificaCliente)
        cobrarCartao(detalhesDoPagamento, carrinho) if detalhesDoPagamento.formaPagamento == FormasPagamento::CARTAOCREDITO
        
        reservaEstoque(carrinho)

        notificarCliente(carrinho) if deveNotificaCliente
    end 

    def cobrarCartao(detalhesDoPagamento, carrinho)
        gatewayPagamento = GatewayPagamento.new
        
        gatewayPagamento.credencial = "bla"
        gatewayPagamento.numeroCartao = detalhesDoPagamento.numeroCartao
        gatewayPagamento.mesExpiracao = detalhesDoPagamento.mesExpiracao
        gatewayPagamento.anoExpiracao = detalhesDoPagamento.anoExpiracao
        gatewayPagamento.nomeNoCartao = detalhesDoPagamento.nomeNoCartao
        gatewayPagamento.valor = carrinho.valorTotal

        gatewayPagamento.cobrar      
    end

    def reservaEstoque(carrinho)
        carrinho.itens.each do |item|
            sistemaEstoque = SistemaEstoque.new
            sistemaEstoque.reservar(item.Id, item.Quantidade)
        end     
    end

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