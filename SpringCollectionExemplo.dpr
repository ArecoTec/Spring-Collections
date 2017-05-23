program SpringCollectionExemplo;

uses
  FastMM4 in '..\..\..\..\FastMM\FastMM4.pas',
  FastMM4Messages in '..\..\..\..\FastMM\FastMM4Messages.pas',
  Vcl.Forms,
  SpringCollection.Exemplo in 'SpringCollection.Exemplo.pas' {SpringCollectionExe},
  Pessoa.Model.Intf in 'Pessoa.Model.Intf.pas',
  Pessoa.Model.Impl in 'Pessoa.Model.Impl.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TSpringCollectionExe, SpringCollectionExe);
  Application.Run;
end.
