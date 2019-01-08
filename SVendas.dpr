program SVendas;

uses
  Vcl.Forms,
  U_inicial in 'Fontes\U_inicial.pas' {frm_inicial},
  U_clientes in 'Fontes\U_clientes.pas' {frm_clientes},
  unt_funcoes in 'Fontes\unt_funcoes.pas',
  U_produtos in 'Fontes\U_produtos.pas' {frm_produtos},
  U_DM in 'Fontes\U_DM.pas' {dm: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'SVendas';
  Application.CreateForm(Tfrm_inicial, frm_inicial);
  Application.CreateForm(Tdm, dm);
  Application.Run;
end.
