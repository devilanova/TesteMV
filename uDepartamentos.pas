unit uDepartamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroGeral, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, uDMDepartamentos, uCadDepartamentos;

type
  TfrmDepartamentos = class(TfrmCadastroGeral)
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnCadastrarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDepartamentos: TfrmDepartamentos;

implementation

{$R *.dfm}

procedure TfrmDepartamentos.btnCadastrarClick(Sender: TObject);
begin
  try
    frmCadDepartamentos := TfrmCadDepartamentos.Create(self);
    frmCadDepartamentos.ShowModal;
    dbGrid.DataSource.DataSet.Close;
  finally
    FreeAndNil(frmCadDepartamentos);
  end;
end;

procedure TfrmDepartamentos.btnEditarClick(Sender: TObject);
begin
  try
    try
      inherited;
      frmCadDepartamentos := TfrmCadDepartamentos.Create(self);
      frmCadDepartamentos.Departamentos.Id := dbGrid.DataSource.DataSet.FieldByName('id_departamento').AsInteger;
      frmCadDepartamentos.Departamentos.Nome := dbGrid.DataSource.DataSet.FieldByName('nm_departamento').AsString;
      frmCadDepartamentos.Departamentos.Local := dbGrid.DataSource.DataSet.FieldByName('local').AsString;
      frmCadDepartamentos.ShowModal;
      dbGrid.DataSource.DataSet.Close;
      dbGrid.DataSource.DataSet.Open;
    except
      on e: exception do
      begin
        ShowMessage(e.Message);
      end;

    end;
  finally
    FreeAndNil(frmCadDepartamentos);
  end;
end;

procedure TfrmDepartamentos.btnExcluirClick(Sender: TObject);
begin
  try
    inherited;
    dmDepartamentos.DeleteDepartamentos;
    ShowMessage('Registro excluído!');
    dbGrid.DataSource.DataSet.Close;
    dbGrid.DataSource.DataSet.Open;
  except
    on e: exception do
    begin
      ShowMessage(e.Message);
    end;

  end;

end;

procedure TfrmDepartamentos.btnPesquisarClick(Sender: TObject);
var
  lValorPesq: string;
begin
  lValorPesq := edtPesqNome.Text;
  dmDepartamentos.Pesquisar(lValorPesq);
end;

procedure TfrmDepartamentos.FormCreate(Sender: TObject);
begin
  if not Assigned(dmDepartamentos) then
    dmDepartamentos := TdmDepartamentos.create(self);

end;

procedure TfrmDepartamentos.FormDestroy(Sender: TObject);
begin
  FreeAndNil(dmDepartamentos);
end;

end.
