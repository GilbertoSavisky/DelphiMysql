unit U_inicial;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
    System.Classes, Vcl.Graphics,
    Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls,
    Vcl.ComCtrls, Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask;

type
    Tfrm_inicial = class(TForm)
        stb_inicial: TStatusBar;
        pnl_menu: TPanel;
        menu_inicial: TMainMenu;
        Sistema1: TMenuItem;
        N1: TMenuItem;
        Cadastros1: TMenuItem;
        N2: TMenuItem;
        Produtos1: TMenuItem;
        Clientes1: TMenuItem;
        N3: TMenuItem;
        Movimentos1: TMenuItem;
        N4: TMenuItem;
        PDV1: TMenuItem;
        Caixa1: TMenuItem;
        MVendas1: TMenuItem;
        RelatriosVendas1: TMenuItem;
        VendasRelatrios1: TMenuItem;
        VendasAbertas1: TMenuItem;
        btn_clientes: TSpeedButton;
        btn_produto: TSpeedButton;
        btn_pdv: TSpeedButton;
        N5: TMenuItem;
        Ajustes1: TMenuItem;
        Sair1: TMenuItem;
        N6: TMenuItem;
    btn_sair: TSpeedButton;
        procedure Clientes1Click(Sender: TObject);
        procedure btn_clientesClick(Sender: TObject);
        procedure Produtos1Click(Sender: TObject);
        procedure btn_produtoClick(Sender: TObject);
    procedure btn_sairClick(Sender: TObject);
    private
        { Private declarations }
    public
        { Public declarations }
    end;

var
    frm_inicial: Tfrm_inicial;

implementation

{$R *.dfm}

uses U_clientes, unt_funcoes, U_produtos;

procedure Tfrm_inicial.btn_clientesClick(Sender: TObject);
begin
    Clientes1.Click;
end;

procedure Tfrm_inicial.btn_produtoClick(Sender: TObject);
begin
    Produtos1.Click;
end;

procedure Tfrm_inicial.Clientes1Click(Sender: TObject);
begin
    if testarPermissao('frm_clientes') = false then
        Exit;
    if frm_clientes = nil then
    begin
        frm_clientes := Tfrm_clientes.Create(Self);
        frm_clientes.ShowModal;
    end;
end;

procedure Tfrm_inicial.Produtos1Click(Sender: TObject);
begin
    if testarPermissao('frm_produtos') = false then
        Exit;
    if frm_produtos = nil then
    begin
        frm_produtos := Tfrm_produtos.Create(Self);
        frm_produtos.ShowModal;
    end;

end;

procedure Tfrm_inicial.btn_sairClick(Sender: TObject);
begin
  Close;
end;

end.
