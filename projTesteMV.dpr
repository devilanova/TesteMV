program projTesteMV;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uCadDepartamentos in 'uCadDepartamentos.pas' {frmCadDepartamentos},
  uCadFuncoesEmpregados in 'uCadFuncoesEmpregados.pas' {Form1},
  uDepartamentos in 'uDepartamentos.pas' {frmDepartamentos},
  uDMDepartamentos in 'uDMDepartamentos.pas' {dmDepartamentos: TDataModule},
  uDM in 'uDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmCadDepartamentos, frmCadDepartamentos);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
