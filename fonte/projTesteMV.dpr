program projTesteMV;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uDMDepartamentos in 'uDMDepartamentos.pas' {dmDepartamentos: TDataModule},
  uDM in 'uDM.pas' {DM: TDataModule},
  uCadastroGeral in 'uCadastroGeral.pas' {frmCadastroGeral},
  uFuncoes in 'uFuncoes.pas' {frmFuncoes},
  uDMFuncoes in 'uDMFuncoes.pas' {dmFuncoes: TDataModule},
  uDadosGeral in 'uDadosGeral.pas' {frmDadosGeral},
  uCadFuncoes in 'uCadFuncoes.pas' {frmCadFuncoes},
  uDepartamentos in 'uDepartamentos.pas' {frmDepartamentos},
  uCadDepartamentos in 'uCadDepartamentos.pas' {frmCadDepartamentos},
  uEmpregados in 'uEmpregados.pas' {frmEmpregados},
  uDMEmpregados in 'uDMEmpregados.pas' {dmEmpregados: TDataModule},
  uCadEmpregados in 'uCadEmpregados.pas' {frmCadEmpregados},
  uDMRelatorios in 'uDMRelatorios.pas' {dmRelatorios: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Teste William da Silva Vilanova';
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
