class Carrinho
{
	readonly ICalculadora _calculadora;
	
	public Carrinho()
	{
		_calculadora = new Calculadora();
	}
	
	public List<ItemCarrinho> Itens { get; set; }
	
	public decimal ValorTotal
	{
		get
		{
			var soma = 0;
			foreach (var item in Itens)
				soma += _calculadora.Calcular(item);
			return soma;
		}
	}
}