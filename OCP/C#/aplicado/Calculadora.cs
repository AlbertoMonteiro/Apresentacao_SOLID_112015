interface ICalculadora
{
    decimal Calcular(ItemCarrinho item);
}


class Calculadora : ICalculadora
{
    List<ICalculadorRegra> _regras;
  
    public Calculadora()
    {
        _regras = new List<ICalculadorRegra>();
        _regras.Add(new CalculadorRegraUnidade());
        _regras.Add(new CalculadorRegraPeso());
        _regras.Add(new CalculadorRegraEspecial());
    }
    
    decimal Calcular(ItemCarrinho item)
        => _regras.First(regra => regra.PodeCalcular(item.Medida)).Calcular(item);
}