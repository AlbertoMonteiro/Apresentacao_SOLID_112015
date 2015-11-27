unit Retangulo;

interface

uses
  SysUtils;

type
  IForma = interface
    function Area: Integer;
  end;

  TRetangulo = class(TInterfacedObject, IForma)
  private
    FLargura, FAltura: Integer;
  public
    function Area: Integer;
    property Largura: Integer read FLargura write FLargura;
    property Altura: Integer read FAltura write FAltura;
  end;

  TQuadrado = class(TInterfacedObject, IForma)
  private
    FTamanhoLado: Integer;
  public
    function Area: Integer;
    property TamanhoLado: Integer read FTamanhoLado write FTamanhoLado;
  end;

implementation

function TRetangulo.Area: Integer;
begin
  Result := Largura * Altura;
end;

function TQuadrado.Area: Integer;
begin
  Result := TamanhoLado * TamanhoLado;
end;

end.