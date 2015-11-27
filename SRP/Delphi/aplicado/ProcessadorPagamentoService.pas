unit ProcessadorPagamentoService;

interface

type
  TProcessadorPagamentoService = class
    public
      procedure Processar(detalhesPagamento: TDetalhesPagamento; carrinho: TCarrinho);
  end;

implementation

procedure TProcessadorPagamentoService.Processar(detalhesPagamento: TDetalhesPagamento; carrinho: TCarrinho);
var
	gatewayPagamento: TGatewayPagamento;
begin
	gatewayPagamento := TGatewayPagamento.Create;
	
	gatewayPagamento.Credencial := "bla";
	gatewayPagamento.NumeroCartao := detalhesDoPagamento.NumeroCartao;
	gatewayPagamento.MesExpiracao := detalhesDoPagamento.MesExpiracao;
	gatewayPagamento.AnoExpiracao := detalhesDoPagamento.AnoExpiracao;
	gatewayPagamento.NomeNoCartao := detalhesDoPagamento.NomeNoCartao;
	gatewayPagamento.Valor := carrinho.ValorTotal;

	gatewayPagamento.Cobrar;
end

end.
