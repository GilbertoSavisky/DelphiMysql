unit U_produtos;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
    System.Classes, Vcl.Graphics,
    Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
    Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Buttons, Vcl.DBActns, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Vcl.StdActns;

type
    Tfrm_produtos = class(TForm)
        stb_produtos: TStatusBar;
        page_produtos: TPageControl;
        tab_consultar: TTabSheet;
        tab_cadastrar: TTabSheet;
        DBG_produtos: TDBGrid;
        txt_busca: TEdit;
        Label1: TLabel;
        Image1: TImage;
        Image2: TImage;
        rg_buscar: TRadioGroup;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    ds_produtos_cad: TDataSource;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    ac_produtos: TActionManager;
    ac_insert: TDataSetInsert;
    ac_apagar: TDataSetDelete;
    ac_editar: TDataSetEdit;
    ac_gravar: TDataSetPost;
    ac_cancelar: TDataSetCancel;
    btn_novo: TSpeedButton;
    btn_editar: TSpeedButton;
    btn_ok: TSpeedButton;
    btn_cancelar: TSpeedButton;
    btn_delete: TSpeedButton;
    btn_editar_produto: TSpeedButton;
    btn_sair: TSpeedButton;
        procedure FormClose(Sender: TObject; var Action: TCloseAction);
        procedure txt_buscaKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure btn_editar_produtoClick(Sender: TObject);
    procedure btn_sairClick(Sender: TObject);
    procedure DBG_produtosDblClick(Sender: TObject);
    private
        { Private declarations }
    public
        { Public declarations }
    end;

var
    frm_produtos: Tfrm_produtos;

implementation

{$R *.dfm}

uses U_DM;

procedure Tfrm_produtos.btn_editar_produtoClick(Sender: TObject);
begin
  dm.TB_produtos.Locate('pro_id', dm.SQL_produtospro_id.Value);
  page_produtos.ActivePage := tab_cadastrar;
end;

procedure Tfrm_produtos.btn_sairClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_produtos.DBG_produtosDblClick(Sender: TObject);
begin
  btn_editar_produto.Click;
end;

procedure Tfrm_produtos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    dm.SQL_produtos.Close;
    frm_produtos := nil;
end;

procedure Tfrm_produtos.FormCreate(Sender: TObject);
begin
  dm.TB_produtos.Active := true;
  page_produtos.ActivePage := tab_consultar;
end;

procedure Tfrm_produtos.txt_buscaKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
    begin
        if rg_buscar.ItemIndex = -1 then
        begin
            ShowMessage('Escolha o tipo de busca');
            Exit;
        end;

        with dm.SQL_produtos do
        begin

            Close;
            SQL.Clear;
            SQL.Add('select * from produtos');

            case rg_buscar.ItemIndex of
                0:
                    SQL.Add('where pro_nome like :nome');
                1:
                    SQL.Add('where pro_barras like :nome');
            end;

            ParamByName('nome').Value := '%' + txt_busca.Text + '%';
            Open;
            if RecordCount = 0 then
                ShowMessage('Produto n�o encontrado!');

        end;
    end;
end;

end.
