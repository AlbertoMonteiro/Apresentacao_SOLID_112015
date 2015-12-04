require 'ostruct'
require 'net/smtp'
require 'notificadorService'
require 'processadorPagamentoService'
require 'reservadorEstoqueService'

class FormasPagamento
    CARTAOCREDITO = 1   
end

class Pedido
    
    def initialize
        @reservadorEstoque = ReservadorEstoqueService.new
        @notificador = NotificadorService.new
        @processadorPagamento = ProcessadorPagamentoService.new
    end

    def comprar(carrinho, detalhesDoPagamento, deveNotificaCliente)
        @processadorPagamento.processar(detalhesDoPagamento, carrinho.valorTotal) if detalhesDoPagamento.formaPagamento == FormasPagamento::CARTAOCREDITO
        
        @reservadorEstoque.reservar(carrinho)

        @notificador.notificarCliente(carrinho) if deveNotificaCliente
    end 
end