unit uDadosGeral;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmDadosGeral = class(TForm)
    pnlCentral: TPanel;
    pnlRodape: TPanel;
    btnGravar: TButton;
    btnCancelar: TButton;
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDadosGeral: TfrmDadosGeral;

implementation

{$R *.dfm}

procedure TfrmDadosGeral.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

end.
