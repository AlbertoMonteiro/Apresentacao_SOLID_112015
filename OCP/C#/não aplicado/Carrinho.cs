class Carrinho
{
    public List<ItemCarrinho> Itens { get; set; }
    
    public decimal ValorTotal 
    {
        get
        {
            var soma = 0;
            foreach (var item in Itens)
            {
                if (item.Medida == "unidade")
                    soma += item.Quantidade * 5;
                else if (item.Medida == "peso")
                    soma += item.Quantidade * 4 / 1000;
                else if (item.Medida == "especial")
                {
                    var valor        = item.Quantidade * 0.4;
                    var pacoteDeTres = item.Quantidade / 3;
                    soma += valor - pacoteDeTres * 0.2;
                }
                // mais regras podem vir...esse código não vai parar de crescer...
            }
            return soma;
        }
    }
}