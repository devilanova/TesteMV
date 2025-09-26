object frmDadosGeral: TfrmDadosGeral
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmDadosGeral'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object pnlCentral: TPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 400
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 384
    ExplicitHeight = 202
  end
  object pnlRodape: TPanel
    Left = 0
    Top = 400
    Width = 624
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 202
    ExplicitWidth = 384
    DesignSize = (
      624
      41)
    object btnGravar: TButton
      Left = 530
      Top = 6
      Width = 85
      Height = 25
      Anchors = [akTop, akRight, akBottom]
      Caption = 'Gravar'
      TabOrder = 0
      ExplicitLeft = 290
    end
    object btnCancelar: TButton
      Left = 449
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight, akBottom]
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = btnCancelarClick
      ExplicitLeft = 209
    end
  end
end
