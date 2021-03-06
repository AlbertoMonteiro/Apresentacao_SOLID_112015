[TestFixture]
public class Teste
{
    [Test]
    public void AreaDeveSer6QuandoRetangulo_2X3()
    {
        var retangulo = new Retangulo();
        retangulo.Altura = 2;
        retangulo.Largura = 3;
        Assert.AreEqual(6, retangulo.Area);
    }

    [Test]
    public void AreaDeveSer9QuandoQuadrado_3X3()
    {
        var quadrado = new Quadrado();
        quadrado.TamanhoLado = 3;
        Assert.AreEqual(9, quadrado.Area);
    }

    [Test]
    public void AreaDeveSer20QuandoQuadrado_4X5()
    {
        //Perceba que esse teste não faz mais sentido, pois o valor "retangulo.TamanhoLado=4" será subscrito 
        var quadrado = new Quadrado();
        quadrado.TamanhoLado = 4;
        quadrado.TamanhoLado = 5;
        IForma forma = quadrado; 
        Assert.AreEqual(20, forma.Area);
    }

}
