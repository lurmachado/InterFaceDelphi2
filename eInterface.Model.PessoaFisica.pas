unit eInterface.Model.PessoaFisica;

interface

uses
  eInterface.Model.Interfaces;

type
  TModelPessoaFisica = class(TInterfacedObject, iPessoa)

  private
    FNome: String;
    FSobrenome: String;
    FDisplay: TEvDisplay;

    function Nome (Value : String) : iPessoa; overload;
    function Nome: String; overload;
    function Sobrenome (Value: String) : iPessoa; overload;
    function Sobrenome: String; overload;
    function NomeCompleto : iPessoa;
    function Display (Value : TEvDisplay) : iPessoa; 

  public
    constructor Create;
    destructor Destroy; override;

    class function New : iPessoa;
  end;

implementation

{ TModelPessoaFisica }

constructor TModelPessoaFisica.Create;
begin

end;

destructor TModelPessoaFisica.Destroy;
begin

  inherited;
end;


function TModelPessoaFisica.Display(Value: TEvDisplay): iPessoa;
begin
  Result := Self;
  FDisplay := Value;
end;

class function TModelPessoaFisica.New: iPessoa;
begin
  Result := Self.Create;
end;

function TModelPessoaFisica.Nome(Value: String): iPessoa;
begin
  Result := Self;
  FNome := Value;
end;

function TModelPessoaFisica.NomeCompleto: iPessoa;
begin
  Result := Self;
  FDisplay(FNome + ' ' + FSobrenome);
end;

function TModelPessoaFisica.Sobrenome(Value: String): iPessoa;
begin
  Result := Self;
  FSobrenome := Value;
end;

function TModelPessoaFisica.Nome: String;
begin
  Result := FNome;
end;

function TModelPessoaFisica.Sobrenome: String;
begin
  Result := FSobrenome;
end;

end.
