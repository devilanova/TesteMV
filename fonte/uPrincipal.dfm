object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Teste William da Silva Vilanova'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = menuPrincipal
  Position = poDesktopCenter
  TextHeight = 15
  object menuPrincipal: TMainMenu
    Left = 528
    Top = 16
    object itemCadastros: TMenuItem
      Caption = 'Cadastros'
      object itemEmpregados: TMenuItem
        Caption = '&Empregados'
        OnClick = itemEmpregadosClick
      end
      object itemDepartamentos: TMenuItem
        Caption = '&Departamentos'
        OnClick = itemDepartamentosClick
      end
      object itemFuncoes: TMenuItem
        Caption = '&Fun'#231#245'es'
        OnClick = itemFuncoesClick
      end
    end
    object itemRelatorios: TMenuItem
      Caption = 'Relat'#243'rios'
      object itemRelEmpregados: TMenuItem
        Caption = 'Empregados'
        OnClick = itemRelEmpregadosClick
      end
    end
  end
end
