unit SpringCollection.Exemplo;

interface

uses
  // VCL
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  // Spring
  Spring.Collections,
  // Exemplo
  Pessoa.Model.Intf, Pessoa.Model.Impl;

type
  TSpringCollectionExe = class(TForm)
    btnExecuta: TButton;
    procedure btnExecutaClick(Sender: TObject);
  strict private
    function ExecutaExemploDeCollection: TSpringCollectionExe;
  public
  end;

var
  SpringCollectionExe: TSpringCollectionExe;

implementation

{$R *.dfm}

{ TSpringCollectionExemplo }

procedure TSpringCollectionExe.btnExecutaClick(Sender: TObject);
begin
  Self.ExecutaExemploDeCollection;
end;

function TSpringCollectionExe.ExecutaExemploDeCollection: TSpringCollectionExe;
var
  lPessoa: IPessoa;
  lListaDePessoas: IList<IPessoa>;
begin
  lListaDePessoas := TCollections.CreateList<IPessoa>;
  lPessoa := TPessoa.Create;
  lPessoa
    .SetNome('Zulmira')
    .SetIdade(75);
  lListaDePessoas.Add(lPessoa);
  lPessoa := TPessoa.Create;
  lPessoa
    .SetNome('José')
    .SetIdade(25);
  lListaDePessoas
    .Add(lPessoa);
  lPessoa := TPessoa.Create;
  lPessoa
    .SetNome('Maria')
    .SetIdade(18);
  lListaDePessoas
    .Add(lPessoa);
  lListaDePessoas.Sort;
  for lPessoa in lListaDePessoas do begin
    ShowMessage(lPessoa.GetNome);
  end;
end;

end.
