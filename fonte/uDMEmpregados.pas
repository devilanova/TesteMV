unit uDMEmpregados;

interface

uses
  System.SysUtils, System.Classes, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Dialogs, StrUtils;

type
  TEmpregados = class
   private
    FId: integer;
    FCodDepartamento: integer;
    FCodEmpFuncao: integer;
    FNmEmpregado: string;
    FDataAdmissao: TDateTime;
    FSalario: currency;
    FComissao: currency;
    procedure SetNmEmpregado(Valor: string);
   public
    property CodDepartamento: integer read FCodDepartamento write FCodDepartamento;
    property CodEmpFuncao: integer read FCodEmpFuncao write FCodEmpFuncao;
    property NmEmpregado: string read FNmEmpregado write SetNmEmpregado;
    property DataAdmissao: TDateTime read FDataAdmissao write FDataAdmissao;
    property Salario: currency read FSalario write FSalario;
    property Comissao: currency read FComissao write FComissao;
    property Id: integer read FId write FId;

    constructor Create;
  end;
  TdmEmpregados = class(TDataModule)
    qryPesqEmpregados: TZQuery;
    dsPesqEmpregados: TDataSource;
    qryInsertEmpregados: TZQuery;
    ZIntegerField2: TZIntegerField;
    ZUnicodeStringField3: TZUnicodeStringField;
    ZUnicodeStringField4: TZUnicodeStringField;
    qryUpdateEmpregados: TZQuery;
    ZIntegerField3: TZIntegerField;
    ZUnicodeStringField5: TZUnicodeStringField;
    ZUnicodeStringField6: TZUnicodeStringField;
    qryDeleteEmpregados: TZQuery;
    ZIntegerField4: TZIntegerField;
    ZUnicodeStringField7: TZUnicodeStringField;
    ZUnicodeStringField8: TZUnicodeStringField;
    qryPesqEmpregadosid_empregado: TZIntegerField;
    qryPesqEmpregadoscod_emp_funcao: TZIntegerField;
    qryPesqEmpregadosnm_empregado: TZUnicodeStringField;
    qryPesqEmpregadosdata_admissao: TZDateField;
    qryPesqEmpregadossalario: TZFMTBCDField;
    qryPesqEmpregadoscomissao: TZFMTBCDField;
    qryPesqEmpregadosnm_funcao: TZUnicodeStringField;
    qryFuncoes: TZQuery;
    qryFuncoesid_funcao: TZIntegerField;
    qryFuncoesnm_funcao: TZUnicodeStringField;
    dsFuncoes: TDataSource;
    qryDepartamentos: TZQuery;
    ZIntegerField1: TZIntegerField;
    ZUnicodeStringField1: TZUnicodeStringField;
    ZUnicodeStringField2: TZUnicodeStringField;
    dsDepartamentos: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    FPesqEmpregado: string;
  public
    { Public declarations }
    procedure Pesquisar(const pValor: string);
    procedure InsertEmpregados(pValores: TEmpregados);
    procedure UpdateEmpregados(pValores: TEmpregados);
    procedure DeleteEmpregados;
  end;

var
  dmEmpregados: TdmEmpregados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}


procedure TdmEmpregados.DataModuleCreate(Sender: TObject);
begin
  FPesqEmpregado := qryPesqEmpregados.SQL.text;
end;

procedure TdmEmpregados.Pesquisar(const pValor: string);
var
  lQuery: string;
  lValor: string;
begin
  try
    lValor := QuotedStr('%'+Trim(pValor)+'%');
    lQuery := AnsiReplaceText(FPesqEmpregado, '%nm_Empregado%', lValor);
    qryPesqEmpregados.Close;
    qryPesqEmpregados.sql.text := lQuery;
    qryPesqEmpregados.Open;
  except
    on e: exception do
    begin
      ShowMessage('Erro: ' + e.Message);
    end;
  end;
end;

procedure TdmEmpregados.DeleteEmpregados;
var
  lId: integer;
begin
  try
    lId := dsPesqEmpregados.DataSet.FieldByName('id_empregado').AsInteger;
    qryDeleteEmpregados.Params.ParamByName('id_empregado').Value := lId;
    qryDeleteEmpregados.ExecSQL;
  except
    on e: EDatabaseError do
    begin
      raise Exception.Create('Exclusão não permitida, item associado a outros cadastros!');
    end;
    on e: exception do
    begin
      raise;
    end;

  end;
end;

procedure TdmEmpregados.InsertEmpregados(pValores: TEmpregados);
begin
  try
    qryInsertEmpregados.Params.ParamByName('nm_empregado').Value := pValores.NmEmpregado;
    qryInsertEmpregados.Params.ParamByName('cod_departamento').Value := pValores.CodDepartamento;
    qryInsertEmpregados.Params.ParamByName('cod_emp_funcao').Value := pValores.CodEmpFuncao;
    qryInsertEmpregados.Params.ParamByName('data_admissao').Value := pValores.DataAdmissao;
    qryInsertEmpregados.Params.ParamByName('salario').Value := pValores.Salario;
    qryInsertEmpregados.Params.ParamByName('comissao').Value := pValores.Comissao;
    qryInsertEmpregados.ExecSQL;
  except
    on e: exception do
    begin
      raise;
    end;

  end;
end;

procedure TdmEmpregados.UpdateEmpregados(pValores: TEmpregados);
begin
  try
    qryUpdateEmpregados.Params.ParamByName('id_Empregado').Value := pValores.Id;
    qryUpdateEmpregados.Params.ParamByName('nm_Empregado').Value := pValores.NmEmpregado;
    qryUpdateEmpregados.Params.ParamByName('cod_departamento').Value := pValores.CodDepartamento;
    qryUpdateEmpregados.Params.ParamByName('cod_emp_funcao').Value := pValores.CodEmpFuncao;
    qryUpdateEmpregados.Params.ParamByName('data_admissao').Value := pValores.DataAdmissao;
    qryUpdateEmpregados.Params.ParamByName('salario').Value := pValores.Salario;
    qryUpdateEmpregados.Params.ParamByName('comissao').Value := pValores.Comissao;
    qryUpdateEmpregados.ExecSQL;
  except
    on e: exception do
    begin
      raise;
    end;

  end;
end;

{ TEmpregados }

constructor TEmpregados.Create;
begin
  FId := 0;
  FDataAdmissao := now;
end;

procedure TEmpregados.SetNmEmpregado(Valor: string);
begin
  FNmEmpregado := Trim(Valor);
end;

end.
