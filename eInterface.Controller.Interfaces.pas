unit eInterface.Controller.Interfaces;

interface

uses
  eInterface.Model.Interfaces;

type
  TTypePessoa = (tpFisica, TpJuridica);

  iControlerPessoa = interface
    ['{D3F237BF-4EC2-42E2-A26B-A757AAEC98B1}']
    function Pessoa(Value : TTypePessoa) : iPessoa;
  end;

implementation

end.
