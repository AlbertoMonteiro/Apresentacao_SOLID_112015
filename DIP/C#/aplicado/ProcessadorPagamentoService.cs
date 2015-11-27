interface IProcessadorPagamentoService
{
	void Processar(DetalhesPagamento detalhesDoPagamento, Carrinho carrinho);	
}

class ProcessadorPagamentoService
{
	public void Processar(DetalhesPagamento detalhesDoPagamento, Carrinho carrinho)
	{
		var gatewayPagamento = new GatewayPagamento();
		
		gatewayPagamento.credencial = "bla";
		gatewayPagamento.MumeroCartao = detalhesDoPagamento.MumeroCartao;
		gatewayPagamento.MesExpiracao = detalhesDoPagamento.MesExpiracao;
		gatewayPagamento.AnoExpiracao = detalhesDoPagamento.AnoExpiracao;
		gatewayPagamento.NomeNoCartao = detalhesDoPagamento.NomeNoCartao;
		gatewayPagamento.Valor = carrinho.ValorTotal;

		gatewayPagamento.Cobrar();		
	}
}