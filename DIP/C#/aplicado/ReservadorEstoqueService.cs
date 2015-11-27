interface IReservadorEstoqueService
{
	void ReservarEstoque(Carrinho carrinho);
}

class ReservadorEstoqueService : IReservadorEstoqueService
{
	private void ReservarEstoque(Carrinho carrinho)
	{
		foreach (var item in carrinho.Itens)
		{
			var sistemaEstoque = new SistemaEstoque();
			sistemaEstoque.Reservar(item.Id, item.Quantidade);
		}
	}
}