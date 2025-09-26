inherited frmCadDepartamentos: TfrmCadDepartamentos
  Caption = 'Cadastro Departamentos'
  ClientHeight = 148
  ClientWidth = 397
  StyleElements = [seFont, seClient, seBorder]
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 413
  ExplicitHeight = 187
  TextHeight = 15
  inherited pnlCentral: TPanel
    Width = 397
    Height = 107
    StyleElements = [seFont, seClient, seBorder]
    object lbNome: TLabel
      Left = 32
      Top = 16
      Width = 36
      Height = 15
      Caption = 'Nome:'
    end
    object lbLocal: TLabel
      Left = 37
      Top = 45
      Width = 31
      Height = 15
      Caption = 'Local:'
    end
    object edtNome: TEdit
      Left = 74
      Top = 13
      Width = 301
      Height = 23
      TabOrder = 0
    end
    object cmbLocal: TComboBox
      Left = 74
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
    Width = 397
    StyleElements = [seFont, seClient, seBorder]
    inherited btnGravar: TButton
      Left = 303
      OnClick = btnGravarClick
    end
    inherited btnCancelar: TButton
      Left = 222
    end
  end
end
