unit Pedido;

uses
  ReservadorEstoqueService, NotificadorService, ProcessadorPagamentoService;

interface

type
	FormasPagamento = (CARTAOCREDITO);
  
  TPedido = class  
    private
      ReservadorEstoque: TReservadorEstoqueService;
      Notificador: TNotificadorService;
      ProcessadorPagamento: TProcessadorPagamentoService;
    
    public
        constructor Create; overload;
        procedure Comprar(carrinho: TCarrinho; detalhesPagamento: TDetalhesPagamento; deveNotificarCliente: Boolean);  
  end;

implementation

constructor TPedido.Create; overload;
begin
  ReservadorEstoque := TReservadorEstoqueService.Create;
  Notificador := TNotificadorService.Create;
  ProcessadorPagamento := TProcessadorPagamentoService.Create;
end;

procedure TPedido.Comprar(carrinho: TCarrinho; detalhesPagamento: TDetalhesPagamento; deveNotificarCliente: Boolean);
begin
  if detalhesDoPagamento.formaPagamento = CARTAOCREDITO then
    ProcessadorPagamento.Processar(detalhesDoPagamento, carrinho.ValorTotal);
		
  ReservadorEstoque.Reservar(carrinho)

  if deveNotificaCliente then
    Notificador.notificarCliente(carrinho)
end;

end.
