object frmCadDepartamentos: TfrmCadDepartamentos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastros de Departamentos'
  ClientHeight = 243
  ClientWidth = 384
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  TextHeight = 15
  object pnlRodape: TPanel
    Left = 0
    Top = 202
    Width = 384
    Height = 41
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      384
      41)
    object btnGravar: TButton
      Left = 290
      Top = 6
      Width = 85
      Height = 25
      Anchors = [akTop, akRight, akBottom]
      Caption = 'Gravar'
      TabOrder = 0
      OnClick = btnGravarClick
    end
    object btnCancelar: TButton
      Left = 209
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight, akBottom]
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = btnCancelarClick
    end
  end
  object pnlCentral: TPanel
    Left = 0
    Top = 0
    Width = 384
    Height = 202
    Align = alClient
    TabOrder = 1
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
end
