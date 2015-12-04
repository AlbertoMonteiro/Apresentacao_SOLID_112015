public enum FormasPagamento
{
    CARTAOCREDITO
}

public class Pedido
{
    readonly INotificadorService _notificador;
    readonly IProcessadorPagamentoService _processador;
    readonly IReservadorEstoqueService _reservador;
    
    public Pedido(INotificadorService notificador, IProcessadorPagamentoService processador, IReservadorEstoqueService reservador)
    {
        _notificador = notificador;
        _processador = processador;
        _reservador = reservador;
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