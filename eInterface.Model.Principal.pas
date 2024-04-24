unit eInterface.Model.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  eInterface.Model.Interfaces;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    ComboBox1: TComboBox;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
    FPessoa : iPessoa;
    procedure ExibeResultado(Value : String);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation



{$R *.dfm}

uses eInterface.Controller.Pessoa, eInterface.Controller.Interfaces;

procedure TForm1.Button1Click(Sender: TObject);
begin
  FPessoa
  .Nome(Edit1.Text)
  .Sobrenome(Edit2.Text)
  .Display(ExibeResultado)
  .NomeCompleto;

  Button3.Enabled := True;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Memo1.Clear;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  showmessage('Exemplo Get Nome + Sobrenome =  "' + FPessoa.Nome + '  '  + FPessoa.Sobrenome+'"' );
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  Button1.Enabled := True;
  Button2.Enabled := True;

  case ComboBox1.ItemIndex of
    0 : FPessoa := TControllerPessoa.New.Pessoa(TpFisica) ;
    1 : FPessoa := TControllerPessoa.New.Pessoa(TpJuridica);
  end;
end;

procedure TForm1.ExibeResultado(Value: String);
begin
  Memo1.Lines.Add(Value);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Button1.Enabled := False;
  Button2.Enabled := False;
  Button3.Enabled := False;

  ReportMemoryLeaksOnShutdown := True;

// Para mudar para a Juridica só libera a linha abaixo
//  FPessoa := TModelPessoaJuridica;
end;

end.
