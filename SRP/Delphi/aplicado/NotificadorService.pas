unit NotificadorService;

interface

type
  TNotificadorService = class
    public 
    procedure NotificarCliente(carrinho: TCarrinho);
  end;

implementation

procedure TNotificadorService.NotificarCliente(carrinho: TCarrinho);
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
