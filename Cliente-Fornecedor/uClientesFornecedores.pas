unit uClientesFornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Data.Win.ADODB, uClassClienteFornecedor, uGruposCFCadastrados;

type
  TfrmClientesFornecedores = class(TForm)
    btnCadastrar: TButton;
    btnVoltar: TButton;
    ADOCommand1: TADOCommand;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lblCPF: TLabel;
    Label5: TLabel;
    lblCNPJ: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    edtNome: TEdit;
    edtApelido: TEdit;
    rdbFisica: TRadioButton;
    rdbJuridica: TRadioButton;
    chkCliente: TCheckBox;
    chkFornecedor: TCheckBox;
    edtGrupoCF: TEdit;
    Button1: TButton;
    edtCPF: TEdit;
    edtCNPJ: TEdit;
    edtIdGrupoCF: TEdit;
    chkAtivo: TCheckBox;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    edtEndereco: TEdit;
    edtNumero: TEdit;
    edtBairro: TEdit;
    edtCidade: TEdit;
    edtEstado: TEdit;
    edtComplemento: TEdit;
    edtCEP: TEdit;
    GroupBox3: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    edtTelefone: TEdit;
    edtCelular: TEdit;
    edtEmail: TEdit;
    procedure rdbFisicaClick(Sender: TObject);
    procedure rdbJuridicaClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnCadastrarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    cliente_fornecedor : ClassClienteFornecedor;
    gruposcf_cadastrados : TfrmGruposCFCadastrados;
    procedure CadastrarClienteFornecedor;
    function VerificarCamposNulos : boolean;
    procedure Ativo;
    procedure Tipo;
    procedure Pessoa;
    procedure LimparCampos;
  public
    { Public declarations }
  end;

var
  frmClientesFornecedores: TfrmClientesFornecedores;

implementation

{$R *.dfm}

procedure TfrmClientesFornecedores.btnCadastrarClick(Sender: TObject);
begin
  if self.VerificarCamposNulos = true then
    Application.MessageBox('Os campos com * são obrigatórios!', 'Atenção',
      MB_OK + MB_ICONEXCLAMATION)
  else
    self.CadastrarClienteFornecedor;
end;

procedure TfrmClientesFornecedores.CadastrarClienteFornecedor;
begin
  self.Ativo;

  self.Tipo;

  self.Pessoa;

  self.cliente_fornecedor.setNomeRazaoSocial(edtNome.Text);
  self.cliente_fornecedor.setApelido(edtApelido.Text);
  self.cliente_fornecedor.setCPF(edtCPF.Text);
  self.cliente_fornecedor.setCNPJ(edtCNPJ.Text);
  //self.cliente_fornecedor.setObservacao();

  self.cliente_fornecedor.setEndereco(edtEndereco.Text);
  self.cliente_fornecedor.setNumero(edtNumero.Text);
  self.cliente_fornecedor.setBairro(edtBairro.Text);
  self.cliente_fornecedor.setCidade(edtCidade.Text);
  self.cliente_fornecedor.setEstado(edtEstado.Text);
  self.cliente_fornecedor.setComplemento(edtComplemento.Text);
  self.cliente_fornecedor.setCEP(edtCEP.Text);

  self.cliente_fornecedor.setTelefone(edtTelefone.Text);
  self.cliente_fornecedor.setCelular(edtCelular.Text);
  self.cliente_fornecedor.setEmail(edtEmail.Text);

  self.cliente_fornecedor.setIdGrupoCF(StrToInt(edtIdGrupoCF.Text));

  ADOCommand1.CommandText := 'insert into cliente_fornecedor values(null, "' +
                              self.cliente_fornecedor.getTipo + '", "' +
                              self.cliente_fornecedor.getNomeRazaoSocial + '", "' +
                              self.cliente_fornecedor.getApelido + '", "' +
                              self.cliente_fornecedor.getCPF + '", "' +
                              self.cliente_fornecedor.getCNPJ + '", "' +
                              self.cliente_fornecedor.getTelefone + '", "' +
                              self.cliente_fornecedor.getCelular + '", "' +
                              self.cliente_fornecedor.getEmail + '", "' +
                              self.cliente_fornecedor.getAtivo + '", "' +
                              self.cliente_fornecedor.getPessoa + '", "' +
                              self.cliente_fornecedor.getObservacao + '", "' +
                              self.cliente_fornecedor.getEndereco + '", "' +
                              self.cliente_fornecedor.getNumero + '", "' +
                              self.cliente_fornecedor.getBairro + '", "' +
                              self.cliente_fornecedor.getCidade + '", "' +
                              self.cliente_fornecedor.getEstado + '", "' +
                              self.cliente_fornecedor.getComplemento + '", "' +
                              self.cliente_fornecedor.getCEP + '", ' +
                              IntToStr(self.cliente_fornecedor.getIdGrupoCF) + ');';

  ADOCommand1.Execute;

  self.LimparCampos;

  Application.MessageBox('Cliente/Fornecedor cadastrado com sucesso!', 'Concluído',
    MB_OK + MB_ICONINFORMATION);

  edtNome.SetFocus;
end;


procedure TfrmClientesFornecedores.LimparCampos;
begin
  chkCliente.Checked := false;
  chkFornecedor.Checked := false;
  edtNome.Text := '';
  edtApelido.Text := '';
  edtGrupoCF.Text := '';
  edtIdGrupoCF.Text := '';
  edtCPF.Text := '';
  edtCNPJ.Text := '';

  edtEndereco.Text := '';
  edtNumero.Text := '';
  edtBairro.Text := '';
  edtCidade.Text := '';
  edtEstado.Text := '';
  edtComplemento.Text := '';
  edtCEP.Text := '';

  edtTelefone.Text := '';
  edtCelular.Text := '';
  edtEmail.Text := '';
end;


procedure TfrmClientesFornecedores.Ativo;
begin
  if chkAtivo.Checked = true then
    self.cliente_fornecedor.setAtivo('S')
  else
    self.cliente_fornecedor.setAtivo('N');
end;


procedure TfrmClientesFornecedores.Pessoa;
begin
  if rdbFisica.Checked = true then
    cliente_fornecedor.setPessoa('F')
  else
    cliente_fornecedor.setPessoa('J');
end;


procedure TfrmClientesFornecedores.Tipo;
begin
  if (chkCliente.Checked = true) and (chkFornecedor.Checked = true) then
    cliente_fornecedor.setTipo('CF')
  else if chkCliente.Checked = true then
    cliente_fornecedor.setTipo('C')
  else if chkFornecedor.Checked = true then
    cliente_fornecedor.setTipo('F');
end;


procedure TfrmClientesFornecedores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  self.cliente_fornecedor.dClassClienteFornecedor;
end;


procedure TfrmClientesFornecedores.FormCreate(Sender: TObject);
begin
  self.cliente_fornecedor := ClassClienteFornecedor.cClassClienteFornecedor;
end;


function TfrmClientesFornecedores.VerificarCamposNulos;
begin
  if (edtNome.Text = '') or ((chkCliente.Checked = false) and
    (chkFornecedor.Checked = false)) or (edtGrupoCF.Text = '') then
    result := true
  else
    result := false;
end;


procedure TfrmClientesFornecedores.btnVoltarClick(Sender: TObject);
begin
  self.Close;
end;


procedure TfrmClientesFornecedores.Button1Click(Sender: TObject);
begin
  self.gruposcf_cadastrados := TfrmGruposCFCadastrados.Create(nil);

  self.gruposcf_cadastrados.selecionar := true;
  self.gruposcf_cadastrados.ADOTable1.Active := false;
  self.gruposcf_cadastrados.ADOTable1.Active := true;
  self.gruposcf_cadastrados.ShowModal;

  edtGrupoCF.Text := self.gruposcf_cadastrados.nomeselecionado;
  edtIdGrupoCF.Text := IntToStr(self.gruposcf_cadastrados.idselecionado);
  self.gruposcf_cadastrados.selecionar := false;

  self.gruposcf_cadastrados.Destroy;
end;

procedure TfrmClientesFornecedores.rdbFisicaClick(Sender: TObject);
begin
  lblCPF.Show;
  edtCPF.Show;

  lblCNPJ.Hide;
  edtCNPJ.Hide;
end;


procedure TfrmClientesFornecedores.rdbJuridicaClick(Sender: TObject);
begin
  lblCPF.Hide;
  edtCPF.Hide;

  lblCNPJ.Show;
  edtCNPJ.Show;
end;

end.
