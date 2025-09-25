unit uCadDepartamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uDMDepartamentos;

type
  TfrmCadDepartamentos = class(TForm)
    pnlRodape: TPanel;
    pnlCentral: TPanel;
    btnGravar: TButton;
    btnCancelar: TButton;
    lbNome: TLabel;
    lbLocal: TLabel;
    edtNome: TEdit;
    cmbLocal: TComboBox;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FDepartamentos: TDepartamentos;
  public
    { Public declarations }
    property Departamentos: TDepartamentos read FDepartamentos;
  end;

var
  frmCadDepartamentos: TfrmCadDepartamentos;

implementation

{$R *.dfm}

procedure TfrmCadDepartamentos.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadDepartamentos.btnGravarClick(Sender: TObject);
begin
  try
    FDepartamentos.Nome := edtNome.Text;
    FDepartamentos.Local := cmbLocal.Text;
    if FDepartamentos.Id = 0 then
      dmDepartamentos.InsertDepartamentos(FDepartamentos)
    else
      dmDepartamentos.UpdateDepartamentos(FDepartamentos);
    ShowMessage('Registrado com sucesso!');
    Close;
  except
    on e: exception do
    begin
      ShowMessage(e.Message);
    end;

  end;

end;

procedure TfrmCadDepartamentos.FormCreate(Sender: TObject);
begin
  FDepartamentos := TDepartamentos.Create;
end;

procedure TfrmCadDepartamentos.FormShow(Sender: TObject);
begin
  edtNome.Text := FDepartamentos.Nome;
  cmbLocal.Text := FDepartamentos.Local;
end;

end.
