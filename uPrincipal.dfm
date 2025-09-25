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
      object itemFuncoesEmpregados: TMenuItem
        Caption = '&Fun'#231#245'es Empregados'
      end
      object itemDepartamentos: TMenuItem
        Caption = '&Departamentos'
        OnClick = itemDepartamentosClick
      end
      object itemEmpregados: TMenuItem
        Caption = '&Empregados'
      end
    end
  end
end
