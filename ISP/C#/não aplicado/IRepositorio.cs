public interface IRepositorio<T>
{
    void Incluir(T entidade);
    void Alterar(T entidade);
    void Excluir(T entidade);
    IEnumerable<T> Listar();
}


public class FaturaRepositorio : IRepositorio<Fatura>
{
    public void Incluir(Fatura entidade)
    {
        //código que inclui fatura
    }
    
    public void Alterar(Fatura entidade)
    {
        //código que altera fatura
    }
    
    public void Excluir(Fatura entidade)
    {
        //código que exclui fatura
    }
    
    public IEnumerable<Fatura> Listar()
    {
        //código que lista faturas
    }   
}

public class VencimentoRepositorio : IRepositorio<Vencimento>
{
    public void Incluir(Vencimento entidade)
    {
        throw new NotImplementedException();
    }
    
    public void Alterar(Vencimento entidade)
    {
        throw new NotImplementedException();
    }
    
    public void Excluir(Vencimento entidade)
    {
        throw new NotImplementedException();
    }
    
    public IEnumerable<Vencimento> Listar()
    {
        //código que lista vencimento
    }   
}