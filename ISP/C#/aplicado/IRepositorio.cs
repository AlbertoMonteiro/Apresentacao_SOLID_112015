public interface IRepositorioLeitura<T>
{
    IEnumerable<T> Listar();
}

public interface IRepositorioCompleto<T> : IRepositorioLeitura<T>
{
    void Incluir(T entidade);
    void Alterar(T entidade);
    void Excluir(T entidade);
}


public class FaturaRepositorio : IRepositorioCompleto<Fatura>
{
    public void Incluir(Fatura entidade)
    {
        //codigo que inclui fatura
    }
    
    public void Alterar(Fatura entidade)
    {
        //codigo que altera fatura
    }
    
    public void Excluir(Fatura entidade)
    {
        //codigo que exclui fatura
    }
    
    public IEnumerable<Fatura> Listar()
    {
        //codigo que lista faturas
    }   
}

public class VencimentoRepositorio : IRepositorioLeitura<Vencimento>
{
    public IEnumerable<Vencimento> Listar()
    {
        //codigo que lista vencimento
    }   
}