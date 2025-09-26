unit uDMDepartamentos;

interface

uses
  System.SysUtils, System.Classes, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, uDM, strutils, Dialogs;

type
  TDepartamentos = class
   private
    FId: integer;
    FNome: string;
    FLocal: string;
    procedure SetNome(Valor: string);
    procedure SetLocal(Valor: string);
   public
    property Nome: string read FNome write SetNome;
    property Local: string read FLocal write SetLocal;
    property Id: integer read FId write FId;

    constructor Create;
  end;
  TdmDepartamentos = class(TDataModule)
    qryDepartamentos: TZQuery;
    dsDepartamentos: TDataSource;
    qryDepartamentosid_departamento: TZIntegerField;
    qryDepartamentosnm_departamento: TZUnicodeStringField;
    qryDepartamentoslocal: TZUnicodeStringField;
    qryPesqDepartamentos: TZQuery;
    ZIntegerField1: TZIntegerField;
    ZUnicodeStringField1: TZUnicodeStringField;
    ZUnicodeStringField2: TZUnicodeStringField;
    dsPesqDepartamentos: TDataSource;
    qryInsertDepartamentos: TZQuery;
    ZIntegerField2: TZIntegerField;
    ZUnicodeStringField3: TZUnicodeStringField;
    ZUnicodeStringField4: TZUnicodeStringField;
    qryUpdateDepartamentos: TZQuery;
    ZIntegerField3: TZIntegerField;
    ZUnicodeStringField5: TZUnicodeStringField;
    ZUnicodeStringField6: TZUnicodeStringField;
    qryDeleteDepartamentos: TZQuery;
    ZIntegerField4: TZIntegerField;
    ZUnicodeStringField7: TZUnicodeStringField;
    ZUnicodeStringField8: TZUnicodeStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    FPesqDepartamento: string;
  public
    { Public declarations }
    procedure Pesquisar(const pValor: string);
    procedure InsertDepartamentos(pValores: TDepartamentos);
    procedure UpdateDepartamentos(pValores: TDepartamentos);
    procedure DeleteDepartamentos;
  end;

var
  dmDepartamentos: TdmDepartamentos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmDepartamentos.DataModuleCreate(Sender: TObject);
begin
  FPesqDepartamento := qryPesqDepartamentos.SQL.text;
end;

procedure TdmDepartamentos.Pesquisar(const pValor: string);
var
  lQuery: string;
  lValor: string;
begin
  try
    lValor := QuotedStr('%'+Trim(pValor)+'%');
    lQuery := AnsiReplaceText(FPesqDepartamento, '%nm_departamento%', lValor);
    qryPesqDepartamentos.Close;
    qryPesqDepartamentos.sql.text := lQuery;
    qryPesqDepartamentos.Open;
  except
    on e: exception do
    begin
      ShowMessage('Erro: ' + e.Message);
    end;
  end;
end;

procedure TdmDepartamentos.DeleteDepartamentos;
var
  lId: integer;
begin
  try
    lId := dsPesqDepartamentos.DataSet.FieldByName('id_departamento').AsInteger;
    qryDeleteDepartamentos.Params.ParamByName('id_departamento').Value := lId;
    qryDeleteDepartamentos.ExecSQL;
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

procedure TdmDepartamentos.InsertDepartamentos(pValores: TDepartamentos);
begin
  try
    qryInsertDepartamentos.Params.ParamByName('nm_departamento').Value := pValores.Nome;
    qryInsertDepartamentos.Params.ParamByName('local').Value := pValores.Local;
    qryInsertDepartamentos.ExecSQL;
  except
    on e: exception do
    begin
      raise;
    end;

  end;
end;

procedure TdmDepartamentos.UpdateDepartamentos(pValores: TDepartamentos);
begin
  try
    qryUpdateDepartamentos.Params.ParamByName('id_departamento').Value := pValores.Id;
    qryUpdateDepartamentos.Params.ParamByName('nm_departamento').Value := pValores.Nome;
    qryUpdateDepartamentos.Params.ParamByName('local').Value := pValores.Local;
    qryUpdateDepartamentos.ExecSQL;
  except
    on e: exception do
    begin
      raise;
    end;

  end;
end;

{ TDepartamentos }

constructor TDepartamentos.Create;
begin
  FId := 0;
end;

procedure TDepartamentos.SetLocal(Valor: string);
begin
  FLocal := Trim(Valor);
end;

procedure TDepartamentos.SetNome(Valor: string);
begin
  FNome := Trim(Valor);
end;

end.
