unit uEmpregados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroGeral, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, uDMEmpregados, uCadEmpregados;

type
  TfrmEmpregados = class(TfrmCadastroGeral)
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnCadastrarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEmpregados: TfrmEmpregados;

implementation

{$R *.dfm}

procedure TfrmEmpregados.btnCadastrarClick(Sender: TObject);
begin
  inherited;
  try
    frmCadEmpregados := TfrmCadEmpregados.Create(self);
    frmCadEmpregados.ShowModal;
    dbGrid.DataSource.DataSet.Close;
  finally
    FreeAndNil(frmCadEmpregados);
  end;
end;

procedure TfrmEmpregados.btnEditarClick(Sender: TObject);
begin
  try
    try
      inherited;
      frmCadEmpregados := TfrmCadEmpregados.Create(self);
      frmCadEmpregados.Empregados.Id := dbGrid.DataSource.DataSet.FieldByName('id_empregado').AsInteger;
      frmCadEmpregados.Empregados.NmEmpregado := dbGrid.DataSource.DataSet.FieldByName('nm_empregado').AsString;
      frmCadEmpregados.Empregados.CodDepartamento := dbGrid.DataSource.DataSet.FieldByName('cod_departamento').AsInteger;
      frmCadEmpregados.Empregados.CodEmpFuncao := dbGrid.DataSource.DataSet.FieldByName('cod_emp_funcao').AsInteger;
      frmCadEmpregados.Empregados.DataAdmissao := dbGrid.DataSource.DataSet.FieldByName('data_admissao').AsDateTime;
      frmCadEmpregados.Empregados.Salario := dbGrid.DataSource.DataSet.FieldByName('salario').AsCurrency;
      frmCadEmpregados.Empregados.Comissao := dbGrid.DataSource.DataSet.FieldByName('comissao').AsCurrency;

      frmCadEmpregados.ShowModal;
      dbGrid.DataSource.DataSet.Close;
      dbGrid.DataSource.DataSet.Open;
    except
      on e: exception do
      begin
        ShowMessage(e.Message);
      end;

    end;
  finally
    FreeAndNil(frmCadEmpregados);
  end;
end;

procedure TfrmEmpregados.btnExcluirClick(Sender: TObject);
begin
  try
    inherited;
    dmEmpregados.DeleteEmpregados;
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

procedure TfrmEmpregados.btnPesquisarClick(Sender: TObject);
var
  lValorPesq: string;
begin
  lValorPesq := edtPesqNome.Text;
  dmEmpregados.Pesquisar(lValorPesq);
end;

procedure TfrmEmpregados.FormCreate(Sender: TObject);
begin
  if not Assigned(dmEmpregados) then
    dmEmpregados := TdmEmpregados.create(self);

end;

procedure TfrmEmpregados.FormDestroy(Sender: TObject);
begin
  FreeAndNil(dmEmpregados);
end;

end.
