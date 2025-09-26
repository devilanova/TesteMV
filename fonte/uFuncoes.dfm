inherited frmFuncoes: TfrmFuncoes
  Caption = 'Fun'#231#245'es'
  StyleElements = [seFont, seClient, seBorder]
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  inherited pnlCentral: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited dbGrid: TDBGrid
      DataSource = dmFuncoes.dsPesqFuncoes
      Columns = <
        item
          Expanded = False
          FieldName = 'id_funcao'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_funcao'
          Width = 150
          Visible = True
        end>
    end
    inherited pnlPesquisar: TPanel
      StyleElements = [seFont, seClient, seBorder]
      inherited lbPesqNome: TLabel
        StyleElements = [seFont, seClient, seBorder]
      end
      inherited btnPesquisar: TButton
        OnClick = btnPesquisarClick
      end
      inherited edtPesqNome: TEdit
        StyleElements = [seFont, seClient, seBorder]
      end
    end
  end
  inherited pnlRodape: TPanel
    StyleElements = [seFont, seClient, seBorder]
  end
  inherited pnlTopo: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited btnCadastrar: TButton
      OnClick = btnCadastrarClick
    end
  end
end
