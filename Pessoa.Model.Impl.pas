unit Pessoa.Model.Impl;

interface

uses
  Pessoa.Model.Intf;

type
  TPessoa = class(TInterfacedObject, IPessoa)
  strict private
    FNome: string;
    FIdade: Integer;
    function SetNome(const pNome: string): IPessoa;
    function GetNome: string;
    function SetIdade(const pIdade: Integer): IPessoa;
    function GetIdade: Integer;
  end;

implementation

{ TPessoa }

function TPessoa.GetIdade: Integer;
begin
  Result := Self.FIdade
end;

function TPessoa.GetNome: string;
begin
  Result := Self.FNome;
end;

function TPessoa.SetIdade(const pIdade: Integer): IPessoa;
begin
  Result := Self;
  Self.FIdade := pIdade;
end;

function TPessoa.SetNome(const pNome: string): IPessoa;
begin
  Result := Self;
  Self.FNome := pNome;
end;

end.
