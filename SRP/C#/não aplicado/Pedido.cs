public enum FormasPagamento
{
    CARTAOCREDITO
}

public class Pedido
{
    public void Comprar(Carrinho carrinho, DetalhesPagamento detalhesPagamento, bool deveNotificarCliente)
    {
        if(detalhesPagamento.FormaPagamento == FormasPagamento.CARTAOCREDITO)
            CobrarCartao(detalhesDoPagamento, carrinho);
            
        ReservarEstoque(carrinho);
        
        if(deveNotificarCliente) 
            NotificarCliente(carrinho);
    }
    
    
    private void CobrarCartao(DetalhesPagamento detalhesDoPagamento, Carrinho carrinho)
    {
        var gatewayPagamento = new GatewayPagamento();
        
        gatewayPagamento.credencial   = "bla";
        gatewayPagamento.MumeroCartao = detalhesDoPagamento.MumeroCartao;
        gatewayPagamento.MesExpiracao = detalhesDoPagamento.MesExpiracao;
        gatewayPagamento.AnoExpiracao = detalhesDoPagamento.AnoExpiracao;
        gatewayPagamento.NomeNoCartao = detalhesDoPagamento.NomeNoCartao;
        gatewayPagamento.Valor        = carrinho.ValorTotal;
        gatewayPagamento.Cobrar();
    }
    
    private void ReservarEstoque(Carrinho carrinho)
    {
        foreach (var item in carrinho.Itens)
        {
            var sistemaEstoque = new SistemaEstoque();
            sistemaEstoque.Reservar(item.Id, item.Quantidade);
        }
    }
    
    private void NotificarCliente(Carrinho carrinho)
    {
        var emailCliente = carrinho.EmailCliente;
        
        if(string.IsNullOrWhiteSpace(emailCliente))
            return;
            
        using(var email = new MailMessage("pedido@loja.com", emailCliente))
        using(var smtp  = new SmtpClient("localhost"))
        {
            email.Body = "This is a test e-mail message.";
            email.Subject("SMTP e-mail test");
            smtp.Send(email);
        }
    }   
}