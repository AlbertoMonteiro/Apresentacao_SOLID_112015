unit Pedido;

interface

type
    FormasPagamento = (CARTAOCREDITO);

    TPedido = class
        private 
            procedure CobrarCartao(detalhesPagamento: TDetalhesPagamento; carrinho: TCarrinho);
            procedure ReservarEstoque();
            procedure NotificarCliente();
        public
            procedure Comprar(carrinho: TCarrinho; detalhesPagamento: TDetalhesPagamento; deveNotificarCliente: Boolean);
    end;
    
implementation

procedure TPedido.Comprar(carrinho: TCarrinho; detalhesPagamento: TDetalhesPagamento; deveNotificarCliente: Boolean);
begin
    if detalhesPagamento.FormaPagamento = CARTAOCREDITO then
        CobrarCartao(detalhesDoPagamento, carrinho);
        
    ReservarEstoque(carrinho);
    
    if deveNotificarCliente then 
        NotificarCliente(carrinho);
end

procedure TPedido.CobrarCartao(detalhesPagamento: TDetalhesPagamento; carrinho: TCarrinho);
var
    gatewayPagamento: TGatewayPagamento;
begin
    gatewayPagamento := TGatewayPagamento.Create;
    
    gatewayPagamento.Credencial := "bla";
    gatewayPagamento.NumeroCartao := detalhesDoPagamento.NumeroCartao;
    gatewayPagamento.MesExpiracao := detalhesDoPagamento.MesExpiracao;
    gatewayPagamento.AnoExpiracao := detalhesDoPagamento.AnoExpiracao;
    gatewayPagamento.NomeNoCartao := detalhesDoPagamento.NomeNoCartao;
    gatewayPagamento.Valor := carrinho.ValorTotal;

    gatewayPagamento.Cobrar;
end

procedure TPedido.ReservarEstoque(carrinho: TCarrinho);
var 
    count: Integer;
    sistemaEstoque: TSistemaEstoque;
begin
    for count := 0 to (carrinho.Itens.Length - 1)  do
    begin
        sistemaEstoque := TSistemaEstoque.Create;
        sistemaEstoque.Reservar(item.Id, item.Quantidade);
    end
end

procedure TPedido.NotificarCliente(carrinho: TCarrinho);
var
    emailCliente: string;
    IdSMTP: TIdSMTP; 
    IdMessage: TIdMessage;
begin
    emailCliente := carrinho.EmailCliente;
    if (emailCliente = nil) or (Trim(emailCliente) = '') then
        Exit;
    
    IdSMTP := TIdSMTP.Create;
    IdSMTP.Host := 'localhost';
    
    
    IdMessage := TIdMessage.Create;
    IdMessage.From.Address := 'pedido@loja.com';
    IdMessage.Recipients.Address := emailCliente;
    IdMessage.Subject := 'SMTP e-mail test';
    IdMessage.Body.Text := 'This is a test e-mail message.';
    
    IdSMTP.Connect;
    IdSMTP.Send(IdMessage);
    IdSMTP.Disconnect;
end

end.