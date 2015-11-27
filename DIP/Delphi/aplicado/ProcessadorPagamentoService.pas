unit ProcessadorPagamentoService;

interface

type
  IProcessadorPagamentoService = interface
    procedure Processar(detalhesPagamento: TDetalhesPagamento; carrinho: TCarrinho);
  end;

  TProcessadorPagamentoService = class(TInterfacedObject, IProcessadorPagamentoService)
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
