unit uCadEmpregados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uDadosGeral, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.DBCtrls, uDMEmpregados, Vcl.ComCtrls, Vcl.Mask, Vcl.NumberBox;

type
  TfrmCadEmpregados = class(TfrmDadosGeral)
    lbNome: TLabel;
    edtNome: TEdit;
    lbDepartamento: TLabel;
    lbFuncao: TLabel;
    lbDataAdmissao: TLabel;
    lbSalario: TLabel;
    lbComissao: TLabel;
    cmbDepartamento: TDBLookupComboBox;
    cmbFuncao: TDBLookupComboBox;
    dtDataAdmissao: TDateTimePicker;
    nbSalario: TNumberBox;
    nbComissao: TNumberBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FEmpregados: TEmpregados;
  public
    { Public declarations }
    property Empregados: TEmpregados read FEmpregados;
  end;

var
  frmCadEmpregados: TfrmCadEmpregados;

implementation

{$R *.dfm}

procedure TfrmCadEmpregados.btnGravarClick(Sender: TObject);
begin
  inherited;
  try
    FEmpregados.NmEmpregado := edtNome.Text;
    FEmpregados.CodDepartamento := cmbDepartamento.KeyValue;
    FEmpregados.CodEmpFuncao := cmbFuncao.KeyValue;
    FEmpregados.DataAdmissao := dtDataAdmissao.Date;
    FEmpregados.Salario := nbSalario.ValueCurrency;
    FEmpregados.Comissao := nbComissao.ValueCurrency;
    if FEmpregados.Id = 0 then
      dmEmpregados.InsertEmpregados(FEmpregados)
    else
      dmEmpregados.UpdateEmpregados(FEmpregados);
    ShowMessage('Registrado com sucesso!');
    Close;
  except
    on e: exception do
    begin
      ShowMessage(e.Message);
    end;

  end;
end;

procedure TfrmCadEmpregados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dmEmpregados.qryDepartamentos.Close;
  dmEmpregados.qryFuncoes.Close;
end;

procedure TfrmCadEmpregados.FormCreate(Sender: TObject);
begin
  inherited;
  FEmpregados := TEmpregados.Create;
  dmEmpregados.qryDepartamentos.Open;
  dmEmpregados.qryFuncoes.Open;

end;

procedure TfrmCadEmpregados.FormShow(Sender: TObject);
begin
  inherited;
  edtNome.Text := FEmpregados.NmEmpregado;
  cmbDepartamento.KeyValue := FEmpregados.CodDepartamento;
  cmbFuncao.KeyValue := FEmpregados.CodEmpFuncao;
  dtDataAdmissao.Date := FEmpregados.DataAdmissao;
  nbSalario.Value := FEmpregados.Salario;
  nbComissao.Value := FEmpregados.Comissao;
end;

end.
