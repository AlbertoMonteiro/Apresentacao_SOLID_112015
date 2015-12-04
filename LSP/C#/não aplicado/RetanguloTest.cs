[TestFixture]
public class Teste
{
    [Test]
    public void AreaDeveSer6QuandoRetangulo_2X3()
    => Assert.AreEqual(6, new Retangulo { Altura = 2, Largura = 3}.Area);

    [Test]
    public void AreaDeveSer9QuandoQuadrado_3X3()
    => Assert.AreEqual(9, new Quadrado { Altura = 3}.Area);

    [Test]
    public void AreaDeveSer20QuandoQuadradoRetangulo_4X5()
    {
        Retangulo retangulo = new Quadrado();
        retangulo.Altura = 4;
        retangulo.Largura = 5;
        Assert.AreEqual(20, retangulo.Area);
    }
}