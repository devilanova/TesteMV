unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, uDepartamentos;

type
  TfrmPrincipal = class(TForm)
    menuPrincipal: TMainMenu;
    itemCadastros: TMenuItem;
    itemFuncoesEmpregados: TMenuItem;
    itemDepartamentos: TMenuItem;
    itemEmpregados: TMenuItem;
    procedure itemDepartamentosClick(Sender: TObject);
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

end.
