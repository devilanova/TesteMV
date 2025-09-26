unit uCadFuncoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uDadosGeral, Vcl.StdCtrls, Vcl.ExtCtrls,
  uDMFuncoes;

type
  TfrmCadFuncoes = class(TfrmDadosGeral)
    lbFuncao: TLabel;
    edtFuncao: TEdit;
    procedure btnGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FFuncoes: TFuncoes;
    procedure Validar;
  public
    { Public declarations }
    property Funcoes: TFuncoes read FFuncoes;
  end;

var
  frmCadFuncoes: TfrmCadFuncoes;

implementation

{$R *.dfm}

procedure TfrmCadFuncoes.btnGravarClick(Sender: TObject);
begin
  inherited;
  try
    Validar;
    FFuncoes.Nome := edtFuncao.Text;
    if FFuncoes.Id = 0 then
      dmFuncoes.InsertFuncoes(FFuncoes)
    else
      dmFuncoes.UpdateFuncoes(FFuncoes);
    ShowMessage('Registrado com sucesso!');
    Close;
  except
    on e: exception do
    begin
      ShowMessage(e.Message);
    end;

  end;
end;

procedure TfrmCadFuncoes.Validar;
begin
  if (trim(edtFuncao.Text) = EmptyStr) then
    raise Exception.Create('Digite o nome da função.');
end;

procedure TfrmCadFuncoes.FormCreate(Sender: TObject);
begin
  inherited;
  FFuncoes := TFuncoes.Create;
end;

procedure TfrmCadFuncoes.FormShow(Sender: TObject);
begin
  inherited;
  edtFuncao.Text := FFuncoes.Nome;
end;

end.
