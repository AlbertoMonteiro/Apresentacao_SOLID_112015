unit Repositorio;

interface

uses
  SysUtils, Generics.Collections, Fatura;

type
  IRepositorioLeitura<T> = interface
  	function Listar: TList<T>;
  end;

  IRepositorioCompleto<T> = interface(IRepositorioLeitura<T>)
  	procedure Incluir(entidade: T);
  	procedure Alterar(entidade: T);
  	procedure Excluir(entidade: T);
  end;

  TFaturaRepositorio = class(TInterfacedObject, IRepositorioCompleto<TFatura>)
  public
  	procedure Incluir(entidade: TFatura);
  	procedure Alterar(entidade: TFatura);
  	procedure Excluir(entidade: TFatura);
  	function Listar: TList<TFatura>;
  end;

  TVencimentoRepositorio = class(TInterfacedObject, IRepositorioLeitura<TVencimento>)
  public
  	function Listar: TList<TVencimento>;
  end;

implementation

{ TFaturaRepositorio }

procedure TFaturaRepositorio.Incluir(entidade: TFatura);
begin
	//codigo que inclui fatura
end;

procedure TFaturaRepositorio.Alterar(entidade: TFatura);
begin
	//codigo que altera fatura
end;

procedure TFaturaRepositorio.Excluir(entidade: TFatura);
begin
	//codigo que lista fatura
end;

function TFaturaRepositorio.Listar: TList<TFatura>;
begin
	//codigo que lista faturas
end;

{ TVencimentoRepositorio }

function TVencimentoRepositorio.Listar: TList<TVencimento>;
begin
	//codigo que lista vencimentos
end;

end.