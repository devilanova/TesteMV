inherited frmCadFuncoes: TfrmCadFuncoes
  Caption = 'Cadastro de Fun'#231#227'o'
  ClientHeight = 100
  ClientWidth = 375
  StyleElements = [seFont, seClient, seBorder]
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 391
  ExplicitHeight = 139
  TextHeight = 15
  inherited pnlCentral: TPanel
    Width = 375
    Height = 59
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 375
    ExplicitHeight = 59
    object lbFuncao: TLabel
      Left = 10
      Top = 16
      Width = 42
      Height = 15
      Caption = 'Fun'#231#227'o:'
    end
    object edtFuncao: TEdit
      Left = 58
      Top = 13
      Width = 301
      Height = 23
      TabOrder = 0
    end
  end
  inherited pnlRodape: TPanel
    Top = 59
    Width = 375
    StyleElements = [seFont, seClient, seBorder]
    inherited btnGravar: TButton
      Left = 281
      OnClick = btnGravarClick
      ExplicitLeft = 281
    end
    inherited btnCancelar: TButton
      Left = 200
      ExplicitLeft = 200
    end
  end
end
