﻿unit Repositorio;

interface

uses
  SysUtils, Generics.Collections, Fatura;

type
  IRepositorio<T> = interface
    procedure Incluir(entidade: T);
    procedure Alterar(entidade: T);
    procedure Excluir(entidade: T);
    function Listar: TList<T>;
  end;

  TFaturaRepositorio = class(TInterfacedObject, IRepositorio<TFatura>)
  public
    procedure Incluir(entidade: TFatura);
    procedure Alterar(entidade: TFatura);
    procedure Excluir(entidade: TFatura);
    function Listar: TList<TFatura>;
  end;

  TVencimentoRepositorio = class(TInterfacedObject, IRepositorio<TVencimento>)
  public
    procedure Incluir(entidade: TVencimento);
    procedure Alterar(entidade: TVencimento);
    procedure Excluir(entidade: TVencimento);
    function Listar: TList<TVencimento>;
  end;

implementation

{ TFaturaRepositorio }

procedure TFaturaRepositorio.Alterar(entidade: TFatura);
begin
  // código que altera fatura
end;

procedure TFaturaRepositorio.Excluir(entidade: TFatura);
begin
  // código que exclui faturas
end;

procedure TFaturaRepositorio.Incluir(entidade: TFatura);
begin
  // código que inclui faturas
end;

function TFaturaRepositorio.Listar: TList<TFatura>;
begin
  // código que lista faturas
end;

{ TVencimentoRepositorio }

procedure TVencimentoRepositorio.Alterar(entidade: TVencimento);
begin
  raise Exception.Create('Não implementado');
end;

procedure TVencimentoRepositorio.Excluir(entidade: TVencimento);
begin
  raise Exception.Create('Não implementado');
end;

procedure TVencimentoRepositorio.Incluir(entidade: TVencimento);
begin
  raise Exception.Create('Não implementado');
end;

function TVencimentoRepositorio.Listar: TList<TVencimento>;
begin
  // código que lista faturas
end;

end.
