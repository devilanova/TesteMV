object dmEmpregados: TdmEmpregados
  OnCreate = DataModuleCreate
  Height = 480
  Width = 640
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
    Left = 384
    Top = 48
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
    Left = 384
    Top = 128
  end
  object qryInsertEmpregados: TZQuery
    Connection = DM.Connection
    SQL.Strings = (
      'insert into empregados(cod_departamento,cod_emp_funcao,'
      'nm_empregado,data_admissao,'
      'salario,comissao)'
      'values(:cod_departamento,:cod_emp_funcao,'
      ':nm_empregado,:data_admissao,'
      ':salario,:comissao)')
    Params = <
      item
        Name = 'cod_departamento'
      end
      item
        Name = 'cod_emp_funcao'
      end
      item
        Name = 'nm_empregado'
      end
      item
        Name = 'data_admissao'
      end
      item
        Name = 'salario'
      end
      item
        Name = 'comissao'
      end>
    Left = 88
    Top = 48
    ParamData = <
      item
        Name = 'cod_departamento'
      end
      item
        Name = 'cod_emp_funcao'
      end
      item
        Name = 'nm_empregado'
      end
      item
        Name = 'data_admissao'
      end
      item
        Name = 'salario'
      end
      item
        Name = 'comissao'
      end>
    object ZIntegerField2: TZIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'id_departamento'
      ReadOnly = True
    end
    object ZUnicodeStringField3: TZUnicodeStringField
      DisplayLabel = 'Nome'
      FieldName = 'nm_departamento'
      Size = 100
    end
    object ZUnicodeStringField4: TZUnicodeStringField
      DisplayLabel = 'Local'
      FieldName = 'local'
      Size = 100
    end
  end
  object qryUpdateEmpregados: TZQuery
    Connection = DM.Connection
    SQL.Strings = (
      'update EMPREGADOS'
      'set '
      'cod_departamento = :cod_departamento,'
      'cod_emp_funcao = :cod_emp_funcao,'
      'nm_empregado = :nm_empregado, '
      'data_admissao = :data_admissao,'
      'salario = :salario,'
      'comissao = :comissao'
      'where id_empregado = :id_empregado')
    Params = <
      item
        Name = 'cod_departamento'
      end
      item
        Name = 'cod_emp_funcao'
      end
      item
        Name = 'nm_empregado'
      end
      item
        Name = 'data_admissao'
      end
      item
        Name = 'salario'
      end
      item
        Name = 'comissao'
      end
      item
        Name = 'id_empregado'
      end>
    Left = 88
    Top = 120
    ParamData = <
      item
        Name = 'cod_departamento'
      end
      item
        Name = 'cod_emp_funcao'
      end
      item
        Name = 'nm_empregado'
      end
      item
        Name = 'data_admissao'
      end
      item
        Name = 'salario'
      end
      item
        Name = 'comissao'
      end
      item
        Name = 'id_empregado'
      end>
    object ZIntegerField3: TZIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'id_departamento'
      ReadOnly = True
    end
    object ZUnicodeStringField5: TZUnicodeStringField
      DisplayLabel = 'Nome'
      FieldName = 'nm_departamento'
      Size = 100
    end
    object ZUnicodeStringField6: TZUnicodeStringField
      DisplayLabel = 'Local'
      FieldName = 'local'
      Size = 100
    end
  end
  object qryDeleteEmpregados: TZQuery
    Connection = DM.Connection
    SQL.Strings = (
      'delete from EMPREGADOS'
      'WHERE id_empregado = :id_empregado')
    Params = <
      item
        Name = 'id_empregado'
      end>
    Left = 104
    Top = 200
    ParamData = <
      item
        Name = 'id_empregado'
      end>
    object ZIntegerField4: TZIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'id_departamento'
      ReadOnly = True
    end
    object ZUnicodeStringField7: TZUnicodeStringField
      DisplayLabel = 'Nome'
      FieldName = 'nm_departamento'
      Size = 100
    end
    object ZUnicodeStringField8: TZUnicodeStringField
      DisplayLabel = 'Local'
      FieldName = 'local'
      Size = 100
    end
  end
  object qryFuncoes: TZQuery
    Connection = DM.Connection
    SQL.Strings = (
      'SELECT id_funcao, nm_funcao'
      'FROM funcao'
      'order by nm_funcao')
    Params = <>
    Left = 88
    Top = 264
    object qryFuncoesid_funcao: TZIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'id_funcao'
      ReadOnly = True
    end
    object qryFuncoesnm_funcao: TZUnicodeStringField
      DisplayLabel = 'Fun'#231#227'o'
      FieldName = 'nm_funcao'
      Size = 100
    end
  end
  object dsFuncoes: TDataSource
    AutoEdit = False
    DataSet = qryFuncoes
    Left = 88
    Top = 344
  end
  object qryDepartamentos: TZQuery
    Connection = DM.Connection
    SQL.Strings = (
      'SELECT id_departamento, nm_departamento, local'
      'FROM DEPARTAMENTOS'
      'order by nm_departamento')
    Params = <>
    Left = 232
    Top = 272
    object ZIntegerField1: TZIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'id_departamento'
      ReadOnly = True
    end
    object ZUnicodeStringField1: TZUnicodeStringField
      DisplayLabel = 'Nome'
      FieldName = 'nm_departamento'
      Size = 100
    end
    object ZUnicodeStringField2: TZUnicodeStringField
      DisplayLabel = 'Local'
      FieldName = 'local'
      Size = 100
    end
  end
  object dsDepartamentos: TDataSource
    AutoEdit = False
    DataSet = qryDepartamentos
    Left = 232
    Top = 352
  end
end
