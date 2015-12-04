public interface IForma
{
    int Area { get; }
}

public class Retangulo : IForma
{
    public int Largura { get; set; }
    public int Altura { get; set; }
    public int Area => Largura * Altura;
}

public class Quadrado : IForma
{
    public int TamanhoLado { get; set; }
    public int Area => TamanhoLado * TamanhoLado;
}