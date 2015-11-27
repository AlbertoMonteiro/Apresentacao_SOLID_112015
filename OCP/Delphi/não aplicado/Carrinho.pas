unit Carrinho;

interface

type
  TCarrinho = class
  
  	public
	  function ValorTotal: Double;
  end;

implementation

function TCarrinho.ValorTotal: Double;
var
	count, pacoteDeTres: Integer;
begin
  Result := 0;
  for count := 1 to Itens.Length do
  begin
    if Itens[count].Medida = 'unidade' then
      Inc(Result, Itens[count].Quantidade * 5);
    else if Itens[count].Medida = 'peso' then
      Inc(Result, Itens[count].Quantidade * 4 / 1000);
    else if Itens[count].Medida = 'especial' then
    begin
      Inc(Result, Itens[count].Quantidade * 0.4);
      pacoteDeTres := Itens[count].Quantidade / 3;
      Result := Result - pacoteDeTres * 0.2;
    end;
    // Mais regras podem vir
  end;
end;

end.
