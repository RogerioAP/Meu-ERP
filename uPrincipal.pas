unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, uGruposCF, uGruposCFCadastrados,
  uTiposCobrancaCadastrados, uPlanoContasCadastradas, uTiposPagamentoCadastrados,
  uContasPagarCadastradas, Vcl.Imaging.jpeg, uClientesFornecedorescadastrados,
  uContasReceberCadastradas, uBancosCadastrados, uContasCorrenteCadastradas;

type
  TfrmPrincipal = class(TForm)
    imgFinanceiro: TImage;
    Label1: TLabel;
    imgClienteFornecedor: TImage;
    Label5: TLabel;
    pnlFinanceiro: TPanel;
    imgContasReceber: TImage;
    Label4: TLabel;
    Label2: TLabel;
    imgContasPagar: TImage;
    pnlClienteFornecedor: TPanel;
    imgCadastrarCF: TImage;
    Label6: TLabel;
    imgCFCadastrados: TImage;
    Label7: TLabel;
    Label8: TLabel;
    Label12: TLabel;
    imgTipoCobranca: TImage;
    Label15: TLabel;
    imgPlanoContas: TImage;
    Label16: TLabel;
    imgTipoPagamento: TImage;
    Label17: TLabel;
    Image1: TImage;
    imgBancos: TImage;
    Label3: TLabel;
    imgContasCorrente: TImage;
    Label9: TLabel;
    procedure imgClienteFornecedorClick(Sender: TObject);
    procedure imgFinanceiroClick(Sender: TObject);
    procedure imgCadastrarCFClick(Sender: TObject);
    procedure imgCFCadastradosClick(Sender: TObject);
    procedure imgTipoCobrancaClick(Sender: TObject);
    procedure imgPlanoContasClick(Sender: TObject);
    procedure imgContasPagarClick(Sender: TObject);
    procedure imgTipoPagamentoClick(Sender: TObject);
    procedure imgContasReceberClick(Sender: TObject);
    procedure imgBancosClick(Sender: TObject);
    procedure imgContasCorrenteClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    cliente_fornecedorC : TfrmClieFornCadastrados;
    cadastro_grupocf : TfrmGruposCF;
    gruposcf_cadastrados : TfrmGruposCFCadastrados;
    tipo_cobranca : TfrmTiposCobrancaCadastrados;
    plano_contas : TfrmPlanoContasCadastradas;
    contas_pagar : TfrmContasPagarcadastradas;
    tipos_pc : TfrmTiposPagamentoCadastrados;
    contas_receber : TfrmContasReceberCadastradas;
    bancos : TfrmBancosCadastrados;
    contas_corrente : TfrmContasCorrenteCadastradas;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}


procedure TfrmPrincipal.imgFinanceiroClick(Sender: TObject);
begin
  pnlFinanceiro.Show;
  pnlClienteFornecedor.Hide;
end;


procedure TfrmPrincipal.imgClienteFornecedorClick(Sender: TObject);
begin
  pnlClienteFornecedor.Show;
  pnlFinanceiro.Hide;
end;


procedure TfrmPrincipal.FormActivate(Sender: TObject);
begin
  self.bancos := TfrmBancosCadastrados.Create(nil);
  self.cliente_fornecedorC := TfrmClieForncadastrados.Create(nil);
  self.gruposcf_cadastrados := TfrmGruposCFCadastrados.Create(nil);
  self.plano_contas := TfrmPlanoContasCadastradas.Create(nil);
  self.tipo_cobranca := TfrmTiposCobrancaCadastrados.Create(nil);
  self.tipos_pc := TfrmTiposPagamentoCadastrados.Create(nil);
  self.contas_corrente := TfrmContasCorrenteCadastradas.Create(nil);
  self.contas_pagar := TfrmContasPagarCadastradas.Create(nil);
  self.contas_receber := TfrmContasReceberCadastradas.Create(nil);
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  self.bancos.Destroy;
  self.cliente_fornecedorC.Destroy;
  self.gruposcf_cadastrados.Destroy;
  self.plano_contas.Destroy;
  self.tipo_cobranca.Destroy;
  self.tipos_pc.Destroy;
  self.contas_corrente.Destroy;
  self.contas_pagar.Destroy;
  self.contas_receber.Destroy;
end;

procedure TfrmPrincipal.imgBancosClick(Sender: TObject);
begin
  self.bancos.ShowModal;
end;

procedure TfrmPrincipal.imgCadastrarCFClick(Sender: TObject);
begin
  self.cliente_fornecedorC.ShowModal;
end;

procedure TfrmPrincipal.imgCFCadastradosClick(Sender: TObject);
begin
  self.gruposcf_cadastrados.ShowModal;
end;

procedure TfrmPrincipal.imgPlanoContasClick(Sender: TObject);
begin
  self.plano_contas.ShowModal;
end;

procedure TfrmPrincipal.imgTipoCobrancaClick(Sender: TObject);
begin
  self.tipo_cobranca.ShowModal;
end;

procedure TfrmPrincipal.imgTipoPagamentoClick(Sender: TObject);
begin
  self.tipos_pc.ShowModal;
end;

procedure TfrmPrincipal.imgContasCorrenteClick(Sender: TObject);
begin
  self.contas_corrente.ShowModal;
end;

procedure TfrmPrincipal.imgContasPagarClick(Sender: TObject);
begin
  self.contas_pagar.ShowModal;
end;

procedure TfrmPrincipal.imgContasReceberClick(Sender: TObject);
begin
  self.contas_receber.ShowModal;
end;

end.
