unit U_clientes;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
    System.Classes, Vcl.Graphics,
    Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.DBActns, System.Actions,
    Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Vcl.Buttons,
    Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
    Vcl.Imaging.jpeg,
    Vcl.ExtCtrls, Vcl.ComCtrls;

type
    Tfrm_clientes = class(TForm)
        page_clientes: TPageControl;
        tabe_consultar: TTabSheet;
        Image2: TImage;
        Image4: TImage;
        tabe_adastrar: TTabSheet;
        Image1: TImage;
        DBG_clientes: TDBGrid;
        btn_cancelar: TSpeedButton;
        btn_sair: TSpeedButton;
        btn_delete: TSpeedButton;
        btn_ok: TSpeedButton;
        btn_editar: TSpeedButton;
        btn_novo: TSpeedButton;
        ds_clientes_cad: TDataSource;
        ac_clientes: TActionManager;
        Label14: TLabel;
        txt_busca: TEdit;
        btn_editar_cliente: TSpeedButton;
        sc_novo: TDataSetInsert;
        ac_delete: TDataSetDelete;
        ac_editar: TDataSetEdit;
        ac_salvar: TDataSetPost;
        ac_cancelar: TDataSetCancel;
        DBEdit1: TDBEdit;
        Label1: TLabel;
        Label3: TLabel;
        DBEdit3: TDBEdit;
        Label7: TLabel;
        DBEdit7: TDBEdit;
        Label10: TLabel;
        DBEdit10: TDBEdit;
        DBEdit11: TDBEdit;
        Label11: TLabel;
        Label8: TLabel;
        DBEdit8: TDBEdit;
        DBEdit4: TDBEdit;
        Label4: TLabel;
        Label2: TLabel;
        DBEdit2: TDBEdit;
        Label5: TLabel;
        DBEdit5: TDBEdit;
        Label9: TLabel;
        DBEdit9: TDBEdit;
        DBEdit12: TDBEdit;
        Label12: TLabel;
        Label13: TLabel;
        DBEdit13: TDBEdit;
        DBEdit6: TDBEdit;
        Label6: TLabel;
        procedure FormClose(Sender: TObject; var Action: TCloseAction);
        procedure btn_sairClick(Sender: TObject);
        procedure txt_buscaKeyPress(Sender: TObject; var Key: Char);
        procedure btn_editar_clienteClick(Sender: TObject);
        procedure FormCreate(Sender: TObject);
        procedure DBG_clientesDblClick(Sender: TObject);
    private
        { Private declarations }
    public
        { Public declarations }
    end;

var
    frm_clientes: Tfrm_clientes;

implementation

{$R *.dfm}

uses U_DM;

procedure Tfrm_clientes.btn_editar_clienteClick(Sender: TObject);
begin
    dm.TB_clientes.Locate('cli_id', dm.SQL_clientescli_id.Value);
    page_clientes.ActivePage := tabe_adastrar;

end;

procedure Tfrm_clientes.btn_sairClick(Sender: TObject);
begin
    Close;
end;

procedure Tfrm_clientes.DBG_clientesDblClick(Sender: TObject);
begin
    btn_editar_cliente.Click;
end;

procedure Tfrm_clientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    dm.SQL_clientes.Close;
    frm_clientes := nil;
end;

procedure Tfrm_clientes.FormCreate(Sender: TObject);
begin
    dm.TB_clientes.Active := true;
    page_clientes.ActivePage := tabe_consultar;
end;

procedure Tfrm_clientes.txt_buscaKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
    begin
        with dm.SQL_clientes do
        begin

            Close;
            SQL.Clear;
            SQL.Add('select * from clientes');
            SQL.Add('where cli_nome like :nome');

            ParamByName('nome').Value := '%' + txt_busca.Text + '%';
            Open;
            if RecordCount = 0 then
                ShowMessage('Cliente não encontrado!');

        end;
    end;
end;

end.
