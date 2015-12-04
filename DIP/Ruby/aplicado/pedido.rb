require 'ostruct'
require 'net/smtp'
require 'notificadorService'
require 'processadorPagamentoService'
require 'reservadorEstoqueService'

class FormasPagamento
    CARTAOCREDITO = 1   
end

class Pedido
    
    def initialize(reservador=ProcessadorPagamentoService.new, notificador=NotificadorService.new, processadorPagamento=ReservadorEstoqueService.new)
        @reservadorEstoque = reservador
        @notificador = notificador
        @processadorPagamento = processadorPagamento
    end

    def comprar(carrinho, detalhesDoPagamento, deveNotificaCliente)
        @processadorPagamento.processar(detalhesDoPagamento, carrinho.valorTotal) if detalhesDoPagamento.formaPagamento == FormasPagamento::CARTAOCREDITO
        
        @reservadorEstoque.reservar(carrinho)

        @notificador.notificarCliente(carrinho) if deveNotificaCliente
    end 
end