object dmCliente: TdmCliente
  OldCreateOrder = False
  Height = 470
  Width = 562
  object sqlCliente: TZQuery
    Connection = dmPrincipal.DBase
    CachedUpdates = True
    Active = True
    SQL.Strings = (
      'SELECT * FROM clientes')
    Params = <>
    Left = 48
    Top = 112
    object sqlClienteid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object sqlClientenome: TWideStringField
      FieldName = 'nome'
      Size = 50
    end
    object sqlClientesexo: TWideStringField
      FieldName = 'sexo'
    end
    object sqlClienteendereco: TWideStringField
      FieldName = 'endereco'
      Size = 50
    end
    object sqlClientenum_end: TWideStringField
      FieldName = 'num_end'
    end
    object sqlClientedata_nascimento: TDateField
      FieldName = 'data_nascimento'
    end
  end
  object dsClientes: TDataSource
    AutoEdit = False
    DataSet = sqlCliente
    Left = 48
    Top = 168
  end
  object ACBrCEP: TACBrCEP
    ProxyPort = '8080'
    ParseText = True
    WebService = wsViaCep
    PesquisarIBGE = True
    Left = 130
    Top = 22
  end
  object ACBrConsultaCNPJ: TACBrConsultaCNPJ
    ProxyPort = '8080'
    ParseText = True
    PesquisarIBGE = True
    Left = 48
    Top = 21
  end
  object ACBrValidador: TACBrValidador
    TipoDocto = docCEP
    IgnorarChar = './-'
    Left = 200
    Top = 22
  end
end
