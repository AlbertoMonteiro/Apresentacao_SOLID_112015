unit Carrinho;

interface

type
  TCarrinho = class
  
    private
      Calculadora: ICalculadora;
  
  	public
      constructor Create; overload;
	    function ValorTotal: Double;
  end;

implementation

constructor TCarrinho.Create;
begin
  Calculadora := TCalculadora.Create;
end;

function TCarrinho.ValorTotal: Double;
var
	count, pacoteDeTres: Integer;
begin
  Result := 0;
  for count := 1 to Itens.Length do
    Inc(Result, Calculadora.Calcular(Itens[count]));
end;

end.
