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
    {
        foreach (var regra in _regras)
        {
            if (regra.PodeCalcular(item.Medida))
                return regra.Calcular(item);
        }
        return 0;
    }
}