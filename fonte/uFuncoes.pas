unit uFuncoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroGeral, Data.DB, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, uDMFuncoes, uCadFuncoes;

type
  TfrmFuncoes = class(TfrmCadastroGeral)
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnCadastrarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFuncoes: TfrmFuncoes;

implementation

{$R *.dfm}

procedure TfrmFuncoes.btnCadastrarClick(Sender: TObject);
begin
  inherited;
  try
    frmCadFuncoes := TfrmCadFuncoes.Create(self);
    frmCadFuncoes.ShowModal;
    dbGrid.DataSource.DataSet.Close;
  finally
    FreeAndNil(frmCadFuncoes);
  end;
end;

procedure TfrmFuncoes.btnEditarClick(Sender: TObject);
begin
  try
    try
      inherited;
      frmCadFuncoes := TfrmCadFuncoes.Create(self);
      frmCadFuncoes.Funcoes.Id := dbGrid.DataSource.DataSet.FieldByName('id_funcao').AsInteger;
      frmCadFuncoes.Funcoes.Nome := dbGrid.DataSource.DataSet.FieldByName('nm_funcao').AsString;
      frmCadFuncoes.ShowModal;
      dbGrid.DataSource.DataSet.Close;
      dbGrid.DataSource.DataSet.Open;
    except
      on e: exception do
      begin
        ShowMessage(e.Message);
      end;

    end;
  finally
    FreeAndNil(frmCadFuncoes);
  end;
end;

procedure TfrmFuncoes.btnExcluirClick(Sender: TObject);
begin
  try
    inherited;
    dmFuncoes.DeleteFuncoes;
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

procedure TfrmFuncoes.btnPesquisarClick(Sender: TObject);
var
  lValorPesq: string;
begin
  lValorPesq := edtPesqNome.Text;
  dmFuncoes.Pesquisar(lValorPesq);
end;

procedure TfrmFuncoes.FormCreate(Sender: TObject);
begin
  if not Assigned(dmFuncoes) then
    dmFuncoes := TdmFuncoes.create(self);
end;

procedure TfrmFuncoes.FormDestroy(Sender: TObject);
begin
  FreeAndNil(dmFuncoes);
end;

end.
