class ProcessadorPagamentoService
    def processar(detalhesDoPagamento, valorTotal)
        gatewayPagamento = GatewayPagamento.new
        
        gatewayPagamento.credencial = "bla"
        gatewayPagamento.numeroCartao = detalhesDoPagamento.numeroCartao
        gatewayPagamento.mesExpiracao = detalhesDoPagamento.mesExpiracao
        gatewayPagamento.anoExpiracao = detalhesDoPagamento.anoExpiracao
        gatewayPagamento.nomeNoCartao = detalhesDoPagamento.nomeNoCartao
        gatewayPagamento.valor = valorTotal

        gatewayPagamento.cobrar 
    end
end