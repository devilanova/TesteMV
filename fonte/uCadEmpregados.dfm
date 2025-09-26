inherited frmCadEmpregados: TfrmCadEmpregados
  Caption = 'Cadastro Empregados'
  ClientHeight = 281
  ClientWidth = 446
  StyleElements = [seFont, seClient, seBorder]
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 462
  ExplicitHeight = 320
  TextHeight = 15
  inherited pnlCentral: TPanel
    Width = 446
    Height = 240
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 446
    ExplicitHeight = 240
    object lbNome: TLabel
      Left = 62
      Top = 16
      Width = 36
      Height = 15
      Caption = 'Nome:'
    end
    object lbDepartamento: TLabel
      Left = 19
      Top = 46
      Width = 79
      Height = 15
      Caption = 'Departamento:'
    end
    object lbFuncao: TLabel
      Left = 56
      Top = 76
      Width = 42
      Height = 15
      Caption = 'Fun'#231#227'o:'
    end
    object lbDataAdmissao: TLabel
      Left = 16
      Top = 104
      Width = 82
      Height = 15
      Caption = 'Data Admiss'#227'o:'
    end
    object lbSalario: TLabel
      Left = 60
      Top = 132
      Width = 38
      Height = 15
      Caption = 'Sal'#225'rio:'
    end
    object lbComissao: TLabel
      Left = 43
      Top = 161
      Width = 55
      Height = 15
      Caption = 'Comiss'#227'o:'
    end
    object edtNome: TEdit
      Left = 104
      Top = 13
      Width = 333
      Height = 23
      TabOrder = 0
    end
    object cmbDepartamento: TDBLookupComboBox
      Left = 104
      Top = 42
      Width = 333
      Height = 23
      KeyField = 'id_departamento'
      ListField = 'nm_departamento'
      ListSource = dmEmpregados.dsDepartamentos
      TabOrder = 1
    end
    object cmbFuncao: TDBLookupComboBox
      Left = 104
      Top = 71
      Width = 333
      Height = 23
      KeyField = 'id_funcao'
      ListField = 'nm_funcao'
      ListSource = dmEmpregados.dsFuncoes
      TabOrder = 2
    end
    object dtDataAdmissao: TDateTimePicker
      Left = 104
      Top = 100
      Width = 145
      Height = 23
      Date = 45925.000000000000000000
      Time = 0.555088032408093600
      TabOrder = 3
    end
    object nbSalario: TNumberBox
      Left = 104
      Top = 129
      Width = 145
      Height = 23
      CurrencyFormat = nbcfNone
      DisplayFormat = '#,##0.00'
      Mode = nbmCurrency
      TabOrder = 4
    end
    object nbComissao: TNumberBox
      Left = 104
      Top = 158
      Width = 145
      Height = 23
      CurrencyFormat = nbcfNone
      DisplayFormat = '#,##0.00'
      Mode = nbmCurrency
      TabOrder = 5
    end
  end
  inherited pnlRodape: TPanel
    Top = 240
    Width = 446
    StyleElements = [seFont, seClient, seBorder]
    inherited btnGravar: TButton
      Left = 352
      OnClick = btnGravarClick
      ExplicitLeft = 352
    end
    inherited btnCancelar: TButton
      Left = 271
      ExplicitLeft = 271
    end
  end
end
