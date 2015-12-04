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
  retangulo: IForma;
  retangulo: TRetangulo;
begin
  retangulo := TRetangulo.Create;
  retangulo.Altura := 2;
  retangulo.Largura := 3;
  forma := retangulo;
  CheckEquals(6, forma.Area);
end;

procedure TestTRetangulo.AreaDeveSer9QuandoQuadrado_3X3;
var
  forma: IForma;
  quadrado: TQuadrado;
begin
  quadrado := TQuadrado.Create;
  quadrado.TamanhoLado := 3;
  forma := quadrado;
  CheckEquals(9, forma.Area);
end;

procedure TestTRetangulo.AreaDeveSer20QuandoQuadradoRetangulo_4X5;
var
  forma: IForma;
  quadrado: TQuadrado;
begin
  quadrado := TQuadrado.Create;
  quadrado.TamanhoLado := 4; // não faz mais sentido
  quadrado.TamanhoLado := 5; // não faz mais sentido
  forma := quadrado;
  CheckEquals(20, forma.Area); // não faz mais sentido
end;

initialization

RegisterTest(TestTRetangulo.Suite);

end.
