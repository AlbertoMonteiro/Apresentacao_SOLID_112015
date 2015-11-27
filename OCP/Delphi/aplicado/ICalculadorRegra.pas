unit ICalculadorRegra;

interface

type
  ICalculadorRegra = interface
  	function PodeCalcular(medida: String): Boolean;
  	function Calcular(item: TItemCarrinho): Double;
  end;
  
  TCalculadorRegraUnidade = class(TInterfacedObject, ICalculadorRegra)
    public
      function PodeCalcular(medida: String): Boolean;
      function Calcular(item: TItemCarrinho): Double;
  end;

  TCalculadorRegraPeso = class(TInterfacedObject, ICalculadorRegra)
    public
      function PodeCalcular(medida: String): Boolean;
      function Calcular(item: TItemCarrinho): Double;
  end;

  TCalculadorRegraEspecial = class(TInterfacedObject, ICalculadorRegra)
    public
      function PodeCalcular(medida: String): Boolean;
      function Calcular(item: TItemCarrinho): Double;
  end;

implementation

//TCalculadorRegraUnidade

function TCalculadorRegraUnidade.PodeCalcular(medida: String): Boolean;
begin
  Result := medida = 'unidade';
end;

function TCalculadorRegraUnidadeCalcular(item: TItemCarrinho): Double;
begin
  Result := item.Quantidade * 5;
end;

//TCalculadorRegraPeso

function TCalculadorRegraPeso.PodeCalcular(medida: String): Boolean;
begin
  Result := medida = 'peso';  
end;

function TCalculadorRegraPesoCalcular(item: TItemCarrinho): Double;
begin
  Result := item.Quantidade * 4 / 1000;
end;

//TCalculadorRegraEspecial

function TCalculadorRegraEspecial.PodeCalcular(medida: String): Boolean;
begin
  Result := medida = 'especial';
end;

function TCalculadorRegraEspecialCalcular(item: TItemCarrinho): Double;
var
	pacoteDeTres: Integer;
begin
  Result = 0.0;
  Inc(Result, item.Quantidade * 0.4);
  pacoteDeTres := item.Quantidade / 3;
  Result := Result - pacoteDeTres * 0.2;
end;

end.
