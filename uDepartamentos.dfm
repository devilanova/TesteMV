object frmDepartamentos: TfrmDepartamentos
  Left = 0
  Top = 0
  Caption = 'Departamentos'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object pnlCentral: TPanel
    Left = 0
    Top = 41
    Width = 624
    Height = 359
    Align = alClient
    TabOrder = 0
    object dbgridDepartamentos: TDBGrid
      Left = 1
      Top = 42
      Width = 622
      Height = 316
      Align = alClient
      DataSource = dmDepartamentos.dsPesqDepartamentos
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      OnDblClick = dbgridDepartamentosDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'id_departamento'
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_departamento'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'local'
          Width = 150
          Visible = True
        end>
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 622
      Height = 41
      Align = alTop
      TabOrder = 1
      DesignSize = (
        622
        41)
      object lbPesqNome: TLabel
        Left = -1
        Top = 9
        Width = 36
        Height = 15
        Caption = 'Nome:'
      end
      object btnPesquisar: TButton
        Left = 536
        Top = 5
        Width = 75
        Height = 25
        Anchors = [akTop, akRight, akBottom]
        Caption = 'Pesquisar'
        TabOrder = 0
        OnClick = btnPesquisarClick
      end
      object edtPesqNome: TEdit
        Left = 41
        Top = 5
        Width = 489
        Height = 23
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 1
        OnKeyUp = edtPesqNomeKeyUp
      end
    end
  end
  object pnlRodape: TPanel
    Left = 0
    Top = 400
    Width = 624
    Height = 41
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      624
      41)
    object btnFechar: TButton
      Left = 537
      Top = 5
      Width = 75
      Height = 25
      Anchors = [akTop, akRight, akBottom]
      Caption = 'Fechar'
      TabOrder = 0
      OnClick = btnFecharClick
    end
  end
  object pnlTopo: TPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 41
    Align = alTop
    TabOrder = 2
    object btnCadastrar: TButton
      Left = 0
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Cadastrar'
      TabOrder = 0
      OnClick = btnCadastrarClick
    end
    object btnEditar: TButton
      Left = 81
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Editar'
      TabOrder = 1
      OnClick = btnEditarClick
    end
    object btnExcluir: TButton
      Left = 162
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 2
      OnClick = btnExcluirClick
    end
  end
end
