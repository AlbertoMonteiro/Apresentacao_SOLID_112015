unit Retangulo;

interface

type
  TRetangulo = class
  protected
    FAltura, FLargura: Integer;
    procedure SetAltura(const Value: Integer); virtual;
    procedure SetLargura(const Value: Integer); virtual;
  public
    property Altura: Integer read FAltura write SetAltura;
    property Largura: Integer read FLargura write SetLargura;
    function Area: Integer;
  end;

  TQuadrado = class(TRetangulo)
  protected
    procedure SetAltura(const Value: Integer); override;
    procedure SetLargura(const Value: Integer); override;
  end;

implementation

procedure TQuadrado.SetAltura(const Value: Integer);
begin
  inherited;
  FLargura := Value;
end;

procedure TQuadrado.SetLargura(const Value: Integer);
begin
  inherited;
  FAltura := Value;
end;

function TRetangulo.Area: Integer;
begin
  Result := Altura * Largura;
end;

procedure TRetangulo.SetAltura(const Value: Integer);
begin
  FAltura := Value;
end;

procedure TRetangulo.SetLargura(const Value: Integer);
begin
  FLargura := Value;
end;

end.