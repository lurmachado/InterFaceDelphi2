unit eInterface.Model.Interfaces;

interface

type

  TEvDisplay = procedure (Value : String) of Object;

  iPessoa = interface
    ['{04FFEFD0-5B73-422C-998B-2A4B067AA58A}']
    function Nome (Value : String) : iPessoa; overload;
    function Nome: String; overload;
    function Sobrenome (Value: String) : iPessoa; overload;
    function Sobrenome: String; overload;
    function NomeCompleto : iPessoa;
    function Display (Value : TEvDisplay) : iPessoa;
  end;

  iPessoaFactory = interface
    ['{19406288-11B9-4A3E-B8F1-6463EAE621FE}']
    function PessoaFisica : iPessoa;
    function PessoaJuridica : iPessoa;
  end;

implementation

end.
