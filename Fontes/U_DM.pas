unit U_DM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Comp.UI, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Phys.FB, FireDAC.Phys.FBDef;

type
  Tdm = class(TDataModule)
    conexao: TFDConnection;
    mySql_link: TFDPhysMySQLDriverLink;
    wait_cursor: TFDGUIxWaitCursor;
    SQL_produtos: TFDQuery;
    SQL_produtospro_id: TFDAutoIncField;
    SQL_produtospro_nome: TStringField;
    SQL_produtospro_barras: TStringField;
    SQL_produtospro_ref: TStringField;
    SQL_produtospro__custo: TFloatField;
    SQL_produtospro_preco_prazo: TFloatField;
    SQL_produtospro_preco: TFloatField;
    SQL_produtospro_estoque: TIntegerField;
    ds_produtos: TDataSource;
    TB_produtos: TFDTable;
    TB_produtospro_id: TFDAutoIncField;
    TB_produtospro_nome: TStringField;
    TB_produtospro_barras: TStringField;
    TB_produtospro_ref: TStringField;
    TB_produtospro__custo: TFloatField;
    TB_produtospro_preco_prazo: TFloatField;
    TB_produtospro_preco: TFloatField;
    TB_produtospro_estoque: TIntegerField;
    SQL_clientes: TFDQuery;
    SQL_clientescli_id: TFDAutoIncField;
    SQL_clientescli_nome: TStringField;
    SQL_clientescli_endereco: TStringField;
    SQL_clientescli_numero: TStringField;
    SQL_clientescli_bairro: TStringField;
    SQL_clientescli_cidade: TStringField;
    SQL_clientescli_estado: TStringField;
    SQL_clientescli_fone: TStringField;
    SQL_clientescli_celular: TStringField;
    SQL_clientescli_cep: TStringField;
    SQL_clientescli_rg: TStringField;
    SQL_clientescli_cpf: TStringField;
    SQL_clientescli_profissao: TStringField;
    SQL_clientescli_datanasc: TDateField;
    TB_clientes: TFDTable;
    TB_clientescli_id: TFDAutoIncField;
    TB_clientescli_nome: TStringField;
    TB_clientescli_endereco: TStringField;
    TB_clientescli_numero: TStringField;
    TB_clientescli_bairro: TStringField;
    TB_clientescli_cidade: TStringField;
    TB_clientescli_estado: TStringField;
    TB_clientescli_fone: TStringField;
    TB_clientescli_celular: TStringField;
    TB_clientescli_cep: TStringField;
    TB_clientescli_rg: TStringField;
    TB_clientescli_cpf: TStringField;
    TB_clientescli_profissao: TStringField;
    TB_clientescli_datanasc: TDateField;
    ds_clientes: TDataSource;
    FDConnection1: TFDConnection;
    DataSource1: TDataSource;
    FDQuery1: TFDQuery;
    FDTable1: TFDTable;
    FDTable1PROD_COD: TIntegerField;
    FDTable1PROD_DESC: TStringField;
    FDTable1PROD_VALOR: TBCDField;
    FDTable1PROD_QTDE: TBCDField;
    FDTable1PROD_QTMINIMA: TBCDField;
    FDTable1FORN_COD: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
