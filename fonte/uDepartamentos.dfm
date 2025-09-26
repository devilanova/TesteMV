inherited frmDepartamentos: TfrmDepartamentos
  Caption = 'Departamentos'
  StyleElements = [seFont, seClient, seBorder]
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  inherited pnlCentral: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited dbGrid: TDBGrid
      DataSource = dmDepartamentos.dsPesqDepartamentos
      Columns = <
        item
          Expanded = False
          FieldName = 'id_departamento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_departamento'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'local'
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
