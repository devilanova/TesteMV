object dmRelatorios: TdmRelatorios
  Height = 480
  Width = 640
  object frxEmpregados: TfrxReport
    Version = '2025.2.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection, pbWatermarks]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45926.390957604200000000
    ReportOptions.LastChange = 45926.447850798610000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 152
    Top = 96
    Datasets = <
      item
        DataSet = frxdsEmpregados
        DataSetName = 'frxdsEmpregados'
      end>
    Variables = <>
    Style = <>
    Watermarks = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 41.574830000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object memoTitulo: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 281.574993156718800000
          Width = 154.960731460000000000
          Height = 18.897650190000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Frame.Typ = []
          Memo.UTF8W = (
            'Relat'#243'rio de Empregados')
        end
        object memoData: TfrxSysMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 623.622497563437500000
          Top = 7.559060430000000000
          Width = 94.488220210000000000
          Height = 15.118119770000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DATE]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 249.448980000000000000
        Width = 718.110700000000000000
        object memoPaginas: TfrxSysMemoView
          Align = baRight
          AllowVectorExport = True
          Left = 570.709077563437500000
          Top = 0.000000570000000005
          Width = 147.401640210000000000
          Height = 18.897644040000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[PAGE#] / [TOTALPAGES#]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 166.299320000000000000
        Width = 718.110700000000000000
        DataSet = frxdsEmpregados
        DataSetName = 'frxdsEmpregados'
        RowCount = 0
        object MemofrxdsEmpregadosnm_empregado: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 7.338590000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'nm_empregado'
          DataSet = frxdsEmpregados
          DataSetName = 'frxdsEmpregados'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdsEmpregados."nm_empregado"]')
        end
        object MemofrxdsEmpregadosdata_admissao: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 179.110390000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'data_admissao'
          DataSet = frxdsEmpregados
          DataSetName = 'frxdsEmpregados'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdsEmpregados."data_admissao"]')
        end
        object MemofrxdsEmpregadossalario: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 262.260050000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'salario'
          DataSet = frxdsEmpregados
          DataSetName = 'frxdsEmpregados'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdsEmpregados."salario"]')
        end
        object MemofrxdsEmpregadoscomissao: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 345.409710000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'comissao'
          DataSet = frxdsEmpregados
          DataSetName = 'frxdsEmpregados'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.ThousandSeparator = '.'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdsEmpregados."comissao"]')
        end
        object MemofrxdsEmpregadosnm_funcao: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 558.842920000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'nm_funcao'
          DataSet = frxdsEmpregados
          DataSetName = 'frxdsEmpregados'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdsEmpregados."nm_funcao"]')
        end
        object MemofrxdsEmpregadosnm_departamento: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 428.559370000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          DataField = 'nm_departamento'
          DataSet = frxdsEmpregados
          DataSetName = 'frxdsEmpregados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxdsEmpregados."nm_departamento"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 83.149660000000000000
        Width = 718.110700000000000000
        object memoNome: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060100000000000
          Top = -1.889766220000000000
          Width = 173.858372960000000000
          Height = 15.118122530000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome')
          ParentFont = False
        end
        object memoAdmissao: TfrxMemoView
          AllowVectorExport = True
          Left = 184.669450000000000000
          Top = -1.779530000000000000
          Width = 79.370122960000000000
          Height = 15.118122530000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Admiss'#227'o')
          ParentFont = False
        end
        object memoSalario: TfrxMemoView
          AllowVectorExport = True
          Left = 266.598640000000000000
          Top = -1.779530000000000000
          Width = 79.370122960000000000
          Height = 15.118122530000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Sal'#225'rio (R$)')
          ParentFont = False
        end
        object memoComissao: TfrxMemoView
          AllowVectorExport = True
          Left = 348.409710000000000000
          Top = -1.779530000000000000
          Width = 79.370122960000000000
          Height = 15.118122530000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Comiss'#227'o (R$)')
          ParentFont = False
        end
        object memoFuncao: TfrxMemoView
          AllowVectorExport = True
          Left = 559.063390000000000000
          Top = -1.779530000000000000
          Width = 154.960722960000000000
          Height = 15.118122530000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Fun'#231#227'o')
          ParentFont = False
        end
        object memoDepartamento: TfrxMemoView
          AllowVectorExport = True
          Left = 430.559370000000000000
          Top = -1.779530000000000000
          Width = 124.724482960000000000
          Height = 15.118122530000000000
          ContentScaleOptions.Constraints.MaxIterationValue = 0
          ContentScaleOptions.Constraints.MinIterationValue = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Departamento')
          ParentFont = False
        end
      end
    end
  end
  object frxdsEmpregados: TfrxDBDataset
    UserName = 'frxdsEmpregados'
    CloseDataSource = False
    DataSource = dsPesqEmpregados
    BCDToCurrency = False
    DataSetOptions = []
    Left = 152
    Top = 168
  end
  object qryPesqEmpregados: TZQuery
    Connection = DM.Connection
    SQL.Strings = (
      'select emp.id_empregado, emp.cod_departamento,'
      'emp.cod_emp_funcao, emp.nm_empregado,'
      'emp.data_admissao,'
      'emp.salario, emp.comissao,'
      'dep.nm_departamento,'
      'func.nm_funcao'
      'from empregados as emp'
      
        'inner join departamentos as dep on dep.id_departamento = emp.cod' +
        '_departamento'
      'inner join funcao as func on func.id_funcao = emp.cod_emp_funcao'
      'order by emp.nm_empregado')
    Params = <>
    Left = 336
    Top = 104
    object qryPesqEmpregadosid_empregado: TZIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'id_empregado'
      ReadOnly = True
    end
    object qryPesqEmpregadoscod_departamento: TZIntegerField
      FieldName = 'cod_departamento'
      Required = True
    end
    object qryPesqEmpregadoscod_emp_funcao: TZIntegerField
      FieldName = 'cod_emp_funcao'
      Required = True
    end
    object qryPesqEmpregadosnm_empregado: TZUnicodeStringField
      DisplayLabel = 'Nome'
      FieldName = 'nm_empregado'
      Size = 100
    end
    object qryPesqEmpregadosdata_admissao: TZDateField
      DisplayLabel = 'Data Admiss'#227'o'
      FieldName = 'data_admissao'
    end
    object qryPesqEmpregadossalario: TZFMTBCDField
      DisplayLabel = 'Sal'#225'rio'
      FieldName = 'salario'
      Precision = 64
      Size = 5
    end
    object qryPesqEmpregadoscomissao: TZFMTBCDField
      DisplayLabel = 'Comiss'#227'o'
      FieldName = 'comissao'
      Precision = 64
      Size = 5
    end
    object qryPesqEmpregadosnm_departamento: TZUnicodeStringField
      DisplayLabel = 'Departamento'
      FieldName = 'nm_departamento'
      Size = 100
    end
    object qryPesqEmpregadosnm_funcao: TZUnicodeStringField
      DisplayLabel = 'Fun'#231#227'o'
      FieldName = 'nm_funcao'
      Size = 100
    end
  end
  object dsPesqEmpregados: TDataSource
    AutoEdit = False
    DataSet = qryPesqEmpregados
    Left = 336
    Top = 184
  end
end
