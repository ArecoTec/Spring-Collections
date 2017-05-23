unit Pessoa.Model.Intf;

interface

type
  IPessoa = interface(IInvokable)
    ['{7DB88B8F-B2B1-4FB0-AFB5-0EEE06414808}']
    function SetNome(const pNome: string): IPessoa;
    function GetNome: string;
    function SetIdade(const pIdade: Integer): IPessoa;
    function GetIdade: Integer;
  end;

implementation

end.
