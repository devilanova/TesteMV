unit uDepartamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, uDMDepartamentos, uCadDepartamentos;

type
  TfrmDepartamentos = class(TForm)
    pnlCentral: TPanel;
    pnlRodape: TPanel;
    btnFechar: TButton;
    dbgridDepartamentos: TDBGrid;
    Panel1: TPanel;
    btnPesquisar: TButton;
    lbPesqNome: TLabel;
    edtPesqNome: TEdit;
    pnlTopo: TPanel;
    btnCadastrar: TButton;
    btnEditar: TButton;
    btnExcluir: TButton;
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edtPesqNomeKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnCadastrarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure dbgridDepartamentosDblClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
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
    dbgridDepartamentos.DataSource.DataSet.Refresh;
  finally
    FreeAndNil(frmCadDepartamentos);
  end;
end;

procedure TfrmDepartamentos.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmDepartamentos.btnEditarClick(Sender: TObject);
begin
  try
    try
      dmDepartamentos.Validar;
      frmCadDepartamentos := TfrmCadDepartamentos.Create(self);
      frmCadDepartamentos.Departamentos.Id := dbgridDepartamentos.DataSource.DataSet.FieldByName('id_departamento').AsInteger;
      frmCadDepartamentos.Departamentos.Nome := dbgridDepartamentos.DataSource.DataSet.FieldByName('nm_departamento').AsString;
      frmCadDepartamentos.Departamentos.Local := dbgridDepartamentos.DataSource.DataSet.FieldByName('local').AsString;
      frmCadDepartamentos.ShowModal;
      dbgridDepartamentos.DataSource.DataSet.Refresh;
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
    dmDepartamentos.DeleteDepartamentos;
    ShowMessage('Registro excluído!');
    dbgridDepartamentos.DataSource.DataSet.Close;
    dbgridDepartamentos.DataSource.DataSet.Open;
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

procedure TfrmDepartamentos.dbgridDepartamentosDblClick(Sender: TObject);
begin
  btnEditar.Click;
end;

procedure TfrmDepartamentos.edtPesqNomeKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
    btnPesquisar.Click;
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
