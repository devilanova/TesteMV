unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, uDepartamentos, uFuncoes,
  uEmpregados, uDMRelatorios;

type
  TfrmPrincipal = class(TForm)
    menuPrincipal: TMainMenu;
    itemCadastros: TMenuItem;
    itemFuncoes: TMenuItem;
    itemDepartamentos: TMenuItem;
    itemEmpregados: TMenuItem;
    itemRelatorios: TMenuItem;
    itemRelEmpregados: TMenuItem;
    procedure itemDepartamentosClick(Sender: TObject);
    procedure itemFuncoesClick(Sender: TObject);
    procedure itemEmpregadosClick(Sender: TObject);
    procedure itemRelEmpregadosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.itemDepartamentosClick(Sender: TObject);
begin
  try
    frmDepartamentos := TfrmDepartamentos.Create(self);
    frmDepartamentos.ShowModal;
  finally
    FreeAndNil(frmDepartamentos);
  end;
end;

procedure TfrmPrincipal.itemEmpregadosClick(Sender: TObject);
begin
  try
    frmEmpregados := TfrmEmpregados.Create(self);
    frmEmpregados.ShowModal;
  finally
    FreeAndNil(frmEmpregados);
  end;
end;

procedure TfrmPrincipal.itemFuncoesClick(Sender: TObject);
begin
  try
    frmFuncoes := TfrmFuncoes.Create(self);
    frmFuncoes.ShowModal;
  finally
    FreeAndNil(frmFuncoes);
  end;
end;

procedure TfrmPrincipal.itemRelEmpregadosClick(Sender: TObject);
begin
  if not Assigned(dmRelatorios) then
    dmRelatorios := TdmRelatorios.Create(self);
  try

    dmRelatorios.frxEmpregados.LoadFromFile('Relatorios\RelEmpregados.fr3');
    dmRelatorios.frxEmpregados.ShowReport();
  finally
    FreeAndNil(dmRelatorios);
  end;
end;

end.
