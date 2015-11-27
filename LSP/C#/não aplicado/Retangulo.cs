public class Retangulo
{
	public virtual int Largura { get; set; }
	public virtual int Altura { get; set; }
	public int Area 
	{ 
		get 
		{ 
			return Largura * Altura; 
		} 
	}
}

public class Quadrado : Retangulo
{
	public override int Largura
	{
		get { return base.Largura; }
		set { base.Largura = base.Altura = value; }
	}
	
	public override int Altura
	{
		get { return base.Altura; }
		set { base.Altura = base.Largura = value; }
	}
}