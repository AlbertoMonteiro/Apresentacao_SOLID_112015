public enum FormasPagamento
{
	CARTAOCREDITO
}

public class Pedido
{
	readonly NotificadorService _notificador;
	readonly ProcessadorPagamentoService _processador;
	readonly ReservadorEstoqueService _reservador;
	
	public Pedido()
	{
		_notificador = new NotificadorService();
		_processador = new ProcessadorPagamentoService();
		_reservador = new ReservadorEstoqueService();
	}
	
	public void Comprar(Carrinho carrinho, DetalhesPagamento detalhesPagamento, bool deveNotificarCliente)
	{
		if(detalhesPagamento.FormaPagamento == FormasPagamento.CARTAOCREDITO)
			_processador.Processar(detalhesDoPagamento, carrinho);
			
		_reservador.ReservarEstoque(carrinho);
		
		if(deveNotificarCliente) 
			_notificador.NotificarCliente(carrinho);
	}
}