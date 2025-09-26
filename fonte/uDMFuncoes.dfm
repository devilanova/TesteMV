object dmFuncoes: TdmFuncoes
  OnCreate = DataModuleCreate
  Height = 480
  Width = 640
  object qryPesqFuncoes: TZQuery
    Connection = DM.Connection
    SQL.Strings = (
      'SELECT id_funcao, nm_funcao'
      'FROM funcao'
      'where nm_funcao ilike %nm_funcao% '
      'order by nm_funcao')
    Params = <>
    Left = 384
    Top = 48
    object qryPesqFuncoesid_funcao: TZIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'id_funcao'
      ReadOnly = True
    end
    object qryPesqFuncoesnm_funcao: TZUnicodeStringField
      DisplayLabel = 'Fun'#231#227'o'
      FieldName = 'nm_funcao'
      Size = 100
    end
  end
  object dsPesqFuncoes: TDataSource
    AutoEdit = False
    DataSet = qryPesqFuncoes
    Left = 384
    Top = 128
  end
  object qryInsertFuncoes: TZQuery
    Connection = DM.Connection
    SQL.Strings = (
      'insert into FUNCAO(nm_funcao)'
      'values(:nm_funcao) ')
    Params = <
      item
        Name = 'nm_funcao'
      end>
    Left = 88
    Top = 48
    ParamData = <
      item
        Name = 'nm_funcao'
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
  object qryUpdateFuncoes: TZQuery
    Connection = DM.Connection
    SQL.Strings = (
      'update FUNCAO'
      'set nm_funcao = :nm_funcao'
      'where id_funcao = :id_funcao')
    Params = <
      item
        Name = 'nm_funcao'
      end
      item
        Name = 'id_funcao'
      end>
    Left = 88
    Top = 120
    ParamData = <
      item
        Name = 'nm_funcao'
      end
      item
        Name = 'id_funcao'
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
  object qryDeleteFuncoes: TZQuery
    Connection = DM.Connection
    SQL.Strings = (
      'delete from FUNCAO'
      'WHERE id_funcao = :id_funcao')
    Params = <
      item
        Name = 'id_funcao'
      end>
    Left = 88
    Top = 184
    ParamData = <
      item
        Name = 'id_funcao'
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
