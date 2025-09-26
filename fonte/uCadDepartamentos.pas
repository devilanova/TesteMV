unit uCadDepartamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uDadosGeral, Vcl.StdCtrls, Vcl.ExtCtrls,
  uDMDepartamentos;

type
  TfrmCadDepartamentos = class(TfrmDadosGeral)
    lbDepartamento: TLabel;
    lbLocal: TLabel;
    edtDepartamento: TEdit;
    cmbLocal: TComboBox;
    procedure btnGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FDepartamentos: TDepartamentos;
    procedure Validar;
  public
    { Public declarations }
    property Departamentos: TDepartamentos read FDepartamentos;
  end;

var
  frmCadDepartamentos: TfrmCadDepartamentos;

implementation

{$R *.dfm}


procedure TfrmCadDepartamentos.btnGravarClick(Sender: TObject);
begin
  try
    Validar;
    FDepartamentos.Nome := edtDepartamento.Text;
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

procedure TfrmCadDepartamentos.Validar;
begin
  if (trim(edtDepartamento.Text) = EmptyStr) then
    raise Exception.Create('Digite o nome do departamento.');
end;

procedure TfrmCadDepartamentos.FormCreate(Sender: TObject);
begin
  FDepartamentos := TDepartamentos.Create;
end;

procedure TfrmCadDepartamentos.FormShow(Sender: TObject);
begin
  edtDepartamento.Text := FDepartamentos.Nome;
  cmbLocal.Text := FDepartamentos.Local;
end;
end.
