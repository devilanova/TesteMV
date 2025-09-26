inherited frmEmpregados: TfrmEmpregados
  Caption = 'Empregados'
  ClientWidth = 860
  StyleElements = [seFont, seClient, seBorder]
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  ExplicitWidth = 876
  TextHeight = 15
  inherited pnlCentral: TPanel
    Width = 860
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 860
    inherited dbGrid: TDBGrid
      Width = 858
      DataSource = dmEmpregados.dsPesqEmpregados
      Columns = <
        item
          Expanded = False
          FieldName = 'id_empregado'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nm_empregado'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'data_admissao'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'salario'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'comissao'
          Width = 100
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
          FieldName = 'nm_funcao'
          Width = 150
          Visible = True
        end>
    end
    inherited Panel1: TPanel
      Width = 858
      StyleElements = [seFont, seClient, seBorder]
      ExplicitWidth = 858
      inherited lbPesqNome: TLabel
        StyleElements = [seFont, seClient, seBorder]
      end
      inherited btnPesquisar: TButton
        Left = 772
        OnClick = btnPesquisarClick
        ExplicitLeft = 772
      end
      inherited edtPesqNome: TEdit
        Width = 725
        StyleElements = [seFont, seClient, seBorder]
        ExplicitWidth = 725
      end
    end
  end
  inherited pnlRodape: TPanel
    Width = 860
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 860
    inherited btnFechar: TButton
      Left = 773
      ExplicitLeft = 773
    end
  end
  inherited pnlTopo: TPanel
    Width = 860
    StyleElements = [seFont, seClient, seBorder]
    ExplicitWidth = 860
    inherited btnCadastrar: TButton
      OnClick = btnCadastrarClick
    end
    inherited btnEditar: TButton
      OnClick = btnEditarClick
    end
    inherited btnExcluir: TButton
      OnClick = btnExcluirClick
    end
  end
end
