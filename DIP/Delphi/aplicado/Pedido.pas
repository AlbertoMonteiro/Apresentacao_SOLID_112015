unit Pedido;

uses
  ReservadorEstoqueService, NotificadorService, ProcessadorPagamentoService;

interface

type
	FormasPagamento = (CARTAOCREDITO);
  
  TPedido = class  
    private
      ReservadorEstoque: IReservadorEstoqueService;
      Notificador: INotificadorService;
      ProcessadorPagamento: IProcessadorPagamentoService;
    
    public
        constructor Create(ReservadorEstoque: IReservadorEstoqueService; Notificador: INotificadorService; ProcessadorPagamento: IProcessadorPagamentoService); overload;
        procedure Comprar(carrinho: TCarrinho; detalhesPagamento: TDetalhesPagamento; deveNotificarCliente: Boolean);  
  end;

implementation

constructor Create(ReservadorEstoque: IReservadorEstoqueService; Notificador: INotificadorService; ProcessadorPagamento: IProcessadorPagamentoService); overload;
begin
  Self.ReservadorEstoque := ReservadorEstoque;
  Self.Notificador := Notificador;
  Self.ProcessadorPagamento := ProcessadorPagamento;
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
