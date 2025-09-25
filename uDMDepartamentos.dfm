object dmDepartamentos: TdmDepartamentos
  OnCreate = DataModuleCreate
  Height = 480
  Width = 777
  object qryDepartamentos: TZQuery
    Connection = DM.Connection
    SQL.Strings = (
      'SELECT id_departamento, nm_departamento, local'
      'FROM DEPARTAMENTOS'
      'order by nm_departamento'
      'LIMIT 10')
    Params = <>
    Left = 256
    Top = 48
    object qryDepartamentosid_departamento: TZIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'id_departamento'
      ReadOnly = True
    end
    object qryDepartamentosnm_departamento: TZUnicodeStringField
      DisplayLabel = 'Nome'
      FieldName = 'nm_departamento'
      Size = 100
    end
    object qryDepartamentoslocal: TZUnicodeStringField
      DisplayLabel = 'Local'
      FieldName = 'local'
      Size = 100
    end
  end
  object dsDepartamentos: TDataSource
    AutoEdit = False
    DataSet = qryDepartamentos
    Left = 256
    Top = 120
  end
  object qryPesqDepartamentos: TZQuery
    Connection = DM.Connection
    SQL.Strings = (
      'SELECT id_departamento, nm_departamento, local'
      'FROM DEPARTAMENTOS'
      'where nm_departamento ilike %nm_departamento% '
      'order by nm_departamento')
    Params = <>
    Left = 384
    Top = 48
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
  object dsPesqDepartamentos: TDataSource
    AutoEdit = False
    DataSet = qryPesqDepartamentos
    Left = 384
    Top = 128
  end
  object qryInsertDepartamentos: TZQuery
    Connection = DM.Connection
    SQL.Strings = (
      'insert into DEPARTAMENTOS(nm_departamento, local) '
      'values(:nm_departamento, :local) ')
    Params = <
      item
        Name = 'nm_departamento'
      end
      item
        Name = 'local'
      end>
    Left = 88
    Top = 48
    ParamData = <
      item
        Name = 'nm_departamento'
      end
      item
        Name = 'local'
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
  object qryUpdateDepartamentos: TZQuery
    Connection = DM.Connection
    SQL.Strings = (
      'update DEPARTAMENTOS'
      'set nm_departamento = :nm_departamento, local = :local'
      'where id_departamento = :id_departamento')
    Params = <
      item
        Name = 'nm_departamento'
      end
      item
        Name = 'local'
      end
      item
        Name = 'id_departamento'
      end>
    Left = 88
    Top = 120
    ParamData = <
      item
        Name = 'nm_departamento'
      end
      item
        Name = 'local'
      end
      item
        Name = 'id_departamento'
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
  object qryDeleteDepartamentos: TZQuery
    Connection = DM.Connection
    SQL.Strings = (
      'delete from DEPARTAMENTOS'
      'WHERE id_departamento = :id_departamento')
    Params = <
      item
        Name = 'id_departamento'
      end>
    Left = 88
    Top = 184
    ParamData = <
      item
        Name = 'id_departamento'
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
end
