inherited frmCadDepartamentos: TfrmCadDepartamentos
  Caption = 'Cadastro Departamentos'
  ClientHeight = 148
  ClientWidth = 477
  StyleElements = [seFont, seClient, seBorder]
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 493
  ExplicitHeight = 187
  TextHeight = 15
  inherited pnlCentral: TPanel
    Width = 477
    Height = 107
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 397
    ExplicitHeight = 107
    object lbDepartamento: TLabel
      Left = 8
      Top = 16
      Width = 79
      Height = 15
      Caption = 'Departamento:'
    end
    object lbLocal: TLabel
      Left = 56
      Top = 45
      Width = 31
      Height = 15
      Caption = 'Local:'
    end
    object edtDepartamento: TEdit
      Left = 93
      Top = 13
      Width = 301
      Height = 23
      TabOrder = 0
    end
    object cmbLocal: TComboBox
      Left = 93
      Top = 42
      Width = 301
      Height = 23
      TabOrder = 1
      Items.Strings = (
        'Alvorada'
        'Canoas'
        'Gravata'#237
        'Porto Alegre')
    end
  end
  inherited pnlRodape: TPanel
    Top = 107
    Width = 477
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 107
    ExplicitWidth = 397
    inherited btnGravar: TButton
      Left = 383
      OnClick = btnGravarClick
      ExplicitLeft = 303
    end
    inherited btnCancelar: TButton
      Left = 302
      ExplicitLeft = 222
    end
  end
end
