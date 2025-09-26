unit uDMFuncoes;

interface

uses
  System.SysUtils, System.Classes, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, StrUtils, Dialogs;

type
  TFuncoes = class
   private
    FId: integer;
    FNome: string;
    procedure SetNome(Valor: string);
   public
    property Nome: string read FNome write SetNome;
    property Id: integer read FId write FId;
    constructor Create;
  end;
  TdmFuncoes = class(TDataModule)
    qryPesqFuncoes: TZQuery;
    dsPesqFuncoes: TDataSource;
    qryInsertFuncoes: TZQuery;
    ZIntegerField2: TZIntegerField;
    ZUnicodeStringField3: TZUnicodeStringField;
    ZUnicodeStringField4: TZUnicodeStringField;
    qryUpdateFuncoes: TZQuery;
    ZIntegerField3: TZIntegerField;
    ZUnicodeStringField5: TZUnicodeStringField;
    ZUnicodeStringField6: TZUnicodeStringField;
    qryDeleteFuncoes: TZQuery;
    ZIntegerField4: TZIntegerField;
    ZUnicodeStringField7: TZUnicodeStringField;
    ZUnicodeStringField8: TZUnicodeStringField;
    qryPesqFuncoesid_funcao: TZIntegerField;
    qryPesqFuncoesnm_funcao: TZUnicodeStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    FPesqFuncoes: string;
  public
    { Public declarations }
    procedure Pesquisar(const pValor: string);
    procedure InsertFuncoes(pValores: TFuncoes);
    procedure UpdateFuncoes(pValores: TFuncoes);
    procedure DeleteFuncoes;
  end;

var
  dmFuncoes: TdmFuncoes;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmFuncoes.DataModuleCreate(Sender: TObject);
begin
  FPesqFuncoes := qryPesqFuncoes.SQL.text;
end;

procedure TdmFuncoes.Pesquisar(const pValor: string);
var
  lQuery: string;
  lValor: string;
begin
  try
    lValor := QuotedStr('%'+Trim(pValor)+'%');
    lQuery := AnsiReplaceText(FPesqFuncoes, '%nm_funcao%', lValor);
    qryPesqFuncoes.Close;
    qryPesqFuncoes.sql.text := lQuery;
    qryPesqFuncoes.Open;
  except
    on e: exception do
    begin
      ShowMessage('Erro: ' + e.Message);
    end;
  end;
end;

procedure TdmFuncoes.DeleteFuncoes;
var
  lId: integer;
begin
  try
    lId := dsPesqFuncoes.DataSet.FieldByName('id_funcao').AsInteger;
    qryDeleteFuncoes.Params.ParamByName('id_funcao').Value := lId;
    qryDeleteFuncoes.ExecSQL;
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

procedure TdmFuncoes.InsertFuncoes(pValores: TFuncoes);
begin
  try
    qryInsertFuncoes.Params.ParamByName('nm_funcao').Value := pValores.Nome;
    qryInsertFuncoes.ExecSQL;
  except
    on e: exception do
    begin
      raise;
    end;

  end;
end;

procedure TdmFuncoes.UpdateFuncoes(pValores: TFuncoes);
begin
  try
    qryUpdateFuncoes.Params.ParamByName('id_funcao').Value := pValores.Id;
    qryUpdateFuncoes.Params.ParamByName('nm_funcao').Value := pValores.Nome;
    qryUpdateFuncoes.ExecSQL;
  except
    on e: exception do
    begin
      raise;
    end;

  end;
end;

{ TFuncoes }

constructor TFuncoes.Create;
begin
  FId := 0;
end;

procedure TFuncoes.SetNome(Valor: string);
begin
  FNome := Trim(Valor);
end;

end.
