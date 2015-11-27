unit Teste;

interface

uses
  TestFramework, Unit1;

type
  TestTRetangulo = class(TTestCase)
  published
    procedure AreaDeveSer6QuandoRetangulo_2X3;
    procedure AreaDeveSer9QuandoQuadrado_3X3;
    procedure AreaDeveSer20QuandoQuadradoRetangulo_4X5;
  end;

implementation

procedure TestTRetangulo.AreaDeveSer6QuandoRetangulo_2X3;
var
  retangulo: TRetangulo;
begin
  retangulo := TRetangulo.Create;
  retangulo.Altura := 2;
  retangulo.Largura := 3;
  CheckEquals(6, retangulo.Area);
end;

procedure TestTRetangulo.AreaDeveSer9QuandoQuadrado_3X3;
var
  retangulo: TQuadrado;
begin
  retangulo := TQuadrado.Create;
  retangulo.Altura := 3;
  CheckEquals(9, retangulo.Area);
end;

procedure TestTRetangulo.AreaDeveSer20QuandoQuadradoRetangulo_4X5;
var
  retangulo: TRetangulo;
begin
  retangulo := TQuadrado.Create;
  retangulo.Altura := 4;
  retangulo.Largura := 5;
  CheckEquals(20, retangulo.Area);
end;

initialization

RegisterTest(TestTRetangulo.Suite);

end.
