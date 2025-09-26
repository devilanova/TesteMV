unit uDMRelatorios;

interface

uses
  System.SysUtils, System.Classes, frxSmartMemo, frxClass, frxDBSet,
  frCoreClasses, Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TdmRelatorios = class(TDataModule)
    frxEmpregados: TfrxReport;
    frxdsEmpregados: TfrxDBDataset;
    qryPesqEmpregados: TZQuery;
    qryPesqEmpregadosid_empregado: TZIntegerField;
    qryPesqEmpregadoscod_departamento: TZIntegerField;
    qryPesqEmpregadoscod_emp_funcao: TZIntegerField;
    qryPesqEmpregadosnm_empregado: TZUnicodeStringField;
    qryPesqEmpregadosdata_admissao: TZDateField;
    qryPesqEmpregadossalario: TZFMTBCDField;
    qryPesqEmpregadoscomissao: TZFMTBCDField;
    qryPesqEmpregadosnm_departamento: TZUnicodeStringField;
    qryPesqEmpregadosnm_funcao: TZUnicodeStringField;
    dsPesqEmpregados: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRelatorios: TdmRelatorios;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
