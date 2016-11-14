unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;


type
  TForm4 = class(TForm)
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses Utilerias, Unit2;


procedure TForm4.FormShow(Sender: TObject);
begin
  if not AbrirConexionBD(DataModule2.ADOConnection1) then
     Application.Terminate
end;


end.
