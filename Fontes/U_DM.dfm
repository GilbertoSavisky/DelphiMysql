object dm: Tdm
  OldCreateOrder = False
  Height = 596
  Width = 596
  object conexao: TFDConnection
    Params.Strings = (
      'Database=SVendas'
      'User_Name=root'
      'Port=3307'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 72
    Top = 64
  end
  object mySql_link: TFDPhysMySQLDriverLink
    DriverID = 'MySQL'
    Left = 136
    Top = 64
  end
  object wait_cursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 200
    Top = 64
  end
  object SQL_produtos: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from produtos')
    Left = 56
    Top = 200
    object SQL_produtospro_id: TFDAutoIncField
      FieldName = 'pro_id'
      Origin = 'pro_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SQL_produtospro_nome: TStringField
      FieldName = 'pro_nome'
      Origin = 'pro_nome'
      Required = True
      Size = 100
    end
    object SQL_produtospro_barras: TStringField
      FieldName = 'pro_barras'
      Origin = 'pro_barras'
      Required = True
    end
    object SQL_produtospro_ref: TStringField
      FieldName = 'pro_ref'
      Origin = 'pro_ref'
      Required = True
    end
    object SQL_produtospro__custo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro__custo'
      Origin = 'pro__custo'
      DisplayFormat = '0.00'
    end
    object SQL_produtospro_preco_prazo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_preco_prazo'
      Origin = 'pro_preco_prazo'
      DisplayFormat = '0.00'
    end
    object SQL_produtospro_preco: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_preco'
      Origin = 'pro_preco'
      DisplayFormat = '0.00'
    end
    object SQL_produtospro_estoque: TIntegerField
      FieldName = 'pro_estoque'
      Origin = 'pro_estoque'
      Required = True
    end
  end
  object ds_produtos: TDataSource
    DataSet = SQL_produtos
    Left = 128
    Top = 200
  end
  object TB_produtos: TFDTable
    IndexFieldNames = 'pro_id'
    Connection = conexao
    UpdateOptions.UpdateTableName = 'SVendas.produtos'
    TableName = 'SVendas.produtos'
    Left = 192
    Top = 200
    object TB_produtospro_id: TFDAutoIncField
      FieldName = 'pro_id'
      Origin = 'pro_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TB_produtospro_nome: TStringField
      FieldName = 'pro_nome'
      Origin = 'pro_nome'
      Required = True
      Size = 100
    end
    object TB_produtospro_barras: TStringField
      FieldName = 'pro_barras'
      Origin = 'pro_barras'
      Required = True
    end
    object TB_produtospro_ref: TStringField
      FieldName = 'pro_ref'
      Origin = 'pro_ref'
      Required = True
    end
    object TB_produtospro__custo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro__custo'
      Origin = 'pro__custo'
    end
    object TB_produtospro_preco_prazo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_preco_prazo'
      Origin = 'pro_preco_prazo'
    end
    object TB_produtospro_preco: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_preco'
      Origin = 'pro_preco'
    end
    object TB_produtospro_estoque: TIntegerField
      FieldName = 'pro_estoque'
      Origin = 'pro_estoque'
      Required = True
    end
  end
  object SQL_clientes: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from clientes')
    Left = 56
    Top = 280
    object SQL_clientescli_id: TFDAutoIncField
      FieldName = 'cli_id'
      Origin = 'cli_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SQL_clientescli_nome: TStringField
      FieldName = 'cli_nome'
      Origin = 'cli_nome'
      Required = True
      Size = 50
    end
    object SQL_clientescli_endereco: TStringField
      FieldName = 'cli_endereco'
      Origin = 'cli_endereco'
      Required = True
      Size = 100
    end
    object SQL_clientescli_numero: TStringField
      FieldName = 'cli_numero'
      Origin = 'cli_numero'
      Required = True
      Size = 50
    end
    object SQL_clientescli_bairro: TStringField
      FieldName = 'cli_bairro'
      Origin = 'cli_bairro'
      Required = True
      Size = 50
    end
    object SQL_clientescli_cidade: TStringField
      FieldName = 'cli_cidade'
      Origin = 'cli_cidade'
      Required = True
      Size = 50
    end
    object SQL_clientescli_estado: TStringField
      FieldName = 'cli_estado'
      Origin = 'cli_estado'
      Required = True
      Size = 30
    end
    object SQL_clientescli_fone: TStringField
      FieldName = 'cli_fone'
      Origin = 'cli_fone'
      Required = True
      Size = 50
    end
    object SQL_clientescli_celular: TStringField
      FieldName = 'cli_celular'
      Origin = 'cli_celular'
      Required = True
    end
    object SQL_clientescli_cep: TStringField
      FieldName = 'cli_cep'
      Origin = 'cli_cep'
      Required = True
    end
    object SQL_clientescli_rg: TStringField
      FieldName = 'cli_rg'
      Origin = 'cli_rg'
      Required = True
      Size = 50
    end
    object SQL_clientescli_cpf: TStringField
      FieldName = 'cli_cpf'
      Origin = 'cli_cpf'
      Required = True
    end
    object SQL_clientescli_profissao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_profissao'
      Origin = 'cli_profissao'
      Size = 50
    end
    object SQL_clientescli_datanasc: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'cli_datanasc'
      Origin = 'cli_datanasc'
    end
  end
  object TB_clientes: TFDTable
    IndexFieldNames = 'cli_id'
    Connection = conexao
    UpdateOptions.UpdateTableName = 'SVendas.clientes'
    TableName = 'SVendas.clientes'
    Left = 200
    Top = 280
    object TB_clientescli_id: TFDAutoIncField
      FieldName = 'cli_id'
      Origin = 'cli_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object TB_clientescli_nome: TStringField
      FieldName = 'cli_nome'
      Origin = 'cli_nome'
      Required = True
      Size = 50
    end
    object TB_clientescli_endereco: TStringField
      FieldName = 'cli_endereco'
      Origin = 'cli_endereco'
      Required = True
      Size = 100
    end
    object TB_clientescli_numero: TStringField
      FieldName = 'cli_numero'
      Origin = 'cli_numero'
      Required = True
      Size = 50
    end
    object TB_clientescli_bairro: TStringField
      FieldName = 'cli_bairro'
      Origin = 'cli_bairro'
      Required = True
      Size = 50
    end
    object TB_clientescli_cidade: TStringField
      FieldName = 'cli_cidade'
      Origin = 'cli_cidade'
      Required = True
      Size = 50
    end
    object TB_clientescli_estado: TStringField
      FieldName = 'cli_estado'
      Origin = 'cli_estado'
      Required = True
      Size = 30
    end
    object TB_clientescli_fone: TStringField
      FieldName = 'cli_fone'
      Origin = 'cli_fone'
      Required = True
      Size = 50
    end
    object TB_clientescli_celular: TStringField
      FieldName = 'cli_celular'
      Origin = 'cli_celular'
      Required = True
    end
    object TB_clientescli_cep: TStringField
      FieldName = 'cli_cep'
      Origin = 'cli_cep'
      Required = True
    end
    object TB_clientescli_rg: TStringField
      FieldName = 'cli_rg'
      Origin = 'cli_rg'
      Required = True
      Size = 50
    end
    object TB_clientescli_cpf: TStringField
      FieldName = 'cli_cpf'
      Origin = 'cli_cpf'
      Required = True
    end
    object TB_clientescli_profissao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cli_profissao'
      Origin = 'cli_profissao'
      Size = 50
    end
    object TB_clientescli_datanasc: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'cli_datanasc'
      Origin = 'cli_datanasc'
    end
  end
  object ds_clientes: TDataSource
    DataSet = SQL_clientes
    Left = 128
    Top = 280
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\gilbe\Developer\Programa'#231#227'o\Delphi2018\Banco\V' +
        'ENDAS2018.GDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=FB')
    Left = 392
    Top = 176
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 400
    Top = 304
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from produtos')
    Left = 392
    Top = 240
  end
  object FDTable1: TFDTable
    IndexFieldNames = 'PROD_COD'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'PRODUTOS'
    TableName = 'PRODUTOS'
    Left = 400
    Top = 400
    object FDTable1PROD_COD: TIntegerField
      FieldName = 'PROD_COD'
      Origin = 'PROD_COD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDTable1PROD_DESC: TStringField
      FieldName = 'PROD_DESC'
      Origin = 'PROD_DESC'
      Size = 30
    end
    object FDTable1PROD_VALOR: TBCDField
      FieldName = 'PROD_VALOR'
      Origin = 'PROD_VALOR'
      Precision = 18
      Size = 2
    end
    object FDTable1PROD_QTDE: TBCDField
      FieldName = 'PROD_QTDE'
      Origin = 'PROD_QTDE'
      Precision = 18
      Size = 2
    end
    object FDTable1PROD_QTMINIMA: TBCDField
      FieldName = 'PROD_QTMINIMA'
      Origin = 'PROD_QTMINIMA'
      Precision = 18
      Size = 2
    end
    object FDTable1FORN_COD: TIntegerField
      FieldName = 'FORN_COD'
      Origin = 'FORN_COD'
      Required = True
    end
  end
end
