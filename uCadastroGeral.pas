unit uCadastroGeral;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls;

type
  TfrmCadastroGeral = class(TForm)
    pnlCentral: TPanel;
    dbGrid: TDBGrid;
    pnlPesquisar: TPanel;
    lbPesqNome: TLabel;
    btnPesquisar: TButton;
    edtPesqNome: TEdit;
    pnlRodape: TPanel;
    btnFechar: TButton;
    pnlTopo: TPanel;
    btnCadastrar: TButton;
    btnEditar: TButton;
    btnExcluir: TButton;
    procedure edtPesqNomeKeyPress(Sender: TObject; var Key: Char);
    procedure dbGridDblClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
  private
    { Private declarations }
    procedure Validar;
  public
    { Public declarations }
  end;

var
  frmCadastroGeral: TfrmCadastroGeral;

implementation

{$R *.dfm}

procedure TfrmCadastroGeral.btnEditarClick(Sender: TObject);
begin
  Validar;
end;

procedure TfrmCadastroGeral.btnExcluirClick(Sender: TObject);
begin
  Validar;
  if MessageDlg('Confirma a exclusão do item selecionado?', TMsgDlgType.mtConfirmation,
        [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0, TMsgDlgBtn.mbYes) = mrNo then
    raise Exception.Create('Registro NÃO excluído!');

end;

procedure TfrmCadastroGeral.Validar;
var
  lRegistros: boolean;
begin
  lRegistros := False;
  if dbGrid.DataSource.DataSet.State = dsBrowse then
    lRegistros := dbGrid.DataSource.DataSet.RecordCount > 0;
  if not lRegistros then
    raise Exception.Create('Selecione um registro!');
end;

procedure TfrmCadastroGeral.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadastroGeral.dbGridDblClick(Sender: TObject);
begin
  btnEditar.Click;
end;

procedure TfrmCadastroGeral.edtPesqNomeKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) then
    btnPesquisar.Click;
end;

end.
