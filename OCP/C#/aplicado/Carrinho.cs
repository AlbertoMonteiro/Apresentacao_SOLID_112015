class Carrinho
{
    readonly ICalculadora _calculadora;
	
    public Carrinho()
    {
	    _calculadora = new Calculadora();
    }
	
    public List<ItemCarrinho> Itens { get; set; }
	
    public decimal ValorTotal
	    => Itens.Sum(item => _calculadora.Calcular(item));
}
