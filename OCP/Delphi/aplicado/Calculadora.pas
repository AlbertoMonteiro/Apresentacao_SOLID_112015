unit Calculadora;

interface

type
  ICalculadora = interface
    function Calcular(Item: TItemCarrinho): Double;
  end;

  TCalculadora = class(TInterfacedObject, ICalculadora)
    private 
     Regras: TList<ICalculadorRegra>;   
    public
     constructor Create; overload;
     function Calcular(Item: TItemCarrinho): Double;
  end;

implementation

function TCalculadora.Create;
begin
  Regras := TList<ICalculadorRegra>.Create;
  Regras.Add(TCalculadorRegraUnidade.Create);
  Regras.Add(TCalculadorRegraPeso.Create);
  Regras.Add(TCalculadorRegraEspecial.Create);
end;

function TCalculadora.Calcular(Item: TItemCarrinho): Double;
var
  count: Integer;
  regra: ICalculadorRegra;
begin
  for count := 1 to Regras.Length do
  begin
    regra := Regras[count];
    if regra.PodeCalcular(regra.medida) then
    begin
      Result := regra.Calcular(Item);
      Exit;
    end;
  end; 
end;

end.