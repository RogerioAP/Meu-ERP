unit uClassContasPagar;

interface

type ClassContasPagar = class
  private
    idcontas_pagar : integer;
    data_cadastro : string;
    titulo : string;
    descricao : string;
    data_emissao : string;
    quant_parcelas : integer;
    vencimento : string;
    valor : double;
    pago_em : string;
    valor_pago : double;
    idtipo_cobranca : integer;
    idplano_contas : integer;
    idcliente_fornecedor : integer;
  public
    constructor cContasPagar;
    destructor dContasPagar;

    procedure setIdContasPagar(pIdContasPagar : integer);
    procedure setDataCadastro(pDataCadastro : string);
    procedure setTitulo(pTitulo : string);
    procedure setDescricao(pDescricao : string);
    procedure setDataEmissao(pDataEmissao : string);
    procedure setQuantParcelas(pQuantParcelas : integer);
    procedure setVencimento(pVencimento : string);
    procedure setValor(pValor : double);
    procedure setPagoEm(pPagoEm : string);
    procedure setValorPago(pValorPago : double);
    procedure setIdTipoCobranca(pIdTipoCobranca : integer);
    procedure setIdPlanoContas(pIdPlanoContas : integer);
    procedure setIdClienteFornecedor(pIdClienteFornecedor : integer);

    function getIdContasPagar : integer;
    function getDataCadastro : string;
    function getTitulo : string;
    function getDescricao : string;
    function getDataEmissao : string;
    function getQuantParcelas : integer;
    function getVencimento : string;
    function getValor : double;
    function getPagoEm : string;
    function getValorPago : double;
    function getIdTipoCobranca : integer;
    function getIdPlanoContas : integer;
    function getIdClienteFornecedor : integer;
end;

implementation

{ ClassContasPagar }


constructor ClassContasPagar.cContasPagar;
begin
    idcontas_pagar := 0;
    data_cadastro := '';
    titulo := '';
    descricao := '';
    data_emissao := '';
    quant_parcelas := 0;
    vencimento := '';
    valor := 0;
    pago_em := '';
    valor_pago := 0;
    idtipo_cobranca := 0;
    idplano_contas := 0;
    idcliente_fornecedor := 0;
end;


destructor ClassContasPagar.dContasPagar;
begin

end;


//GET
function ClassContasPagar.getDataCadastro: string;
begin
  result := data_cadastro;
end;

function ClassContasPagar.getDataEmissao: string;
begin
  result := data_emissao;
end;

function ClassContasPagar.getDescricao: string;
begin
  result := descricao;
end;

function ClassContasPagar.getIdClienteFornecedor: integer;
begin
  result := idcliente_fornecedor;
end;

function ClassContasPagar.getIdContasPagar: integer;
begin
  result := idcontas_pagar;
end;

function ClassContasPagar.getIdPlanoContas: integer;
begin
  result := idplano_contas;
end;

function ClassContasPagar.getIdTipoCobranca: integer;
begin
  result := idtipo_cobranca;
end;

function ClassContasPagar.getPagoEm: string;
begin
  result := pago_em;
end;

function ClassContasPagar.getQuantParcelas: integer;
begin
  result := quant_parcelas;
end;

function ClassContasPagar.getTitulo: string;
begin
  result := titulo;
end;

function ClassContasPagar.getValor: double;
begin
  result := valor;
end;

function ClassContasPagar.getValorPago: double;
begin
  result := valor_pago;
end;

function ClassContasPagar.getVencimento: string;
begin
  result := vencimento;
end;


//SET
procedure ClassContasPagar.setDataCadastro(pDataCadastro: string);
begin
  data_cadastro := pDataCadastro;
end;

procedure ClassContasPagar.setDataEmissao(pDataEmissao: string);
begin
  data_emissao := pDataEmissao;
end;

procedure ClassContasPagar.setDescricao(pDescricao: string);
begin
  descricao := pDescricao;
end;

procedure ClassContasPagar.setIdClienteFornecedor(
  pIdClienteFornecedor: integer);
begin
  idcliente_fornecedor := pIdClienteFornecedor;
end;

procedure ClassContasPagar.setIdContasPagar(pIdContasPagar: integer);
begin
  idcontas_pagar := pIdContasPagar;
end;

procedure ClassContasPagar.setIdPlanoContas(pIdPlanoContas: integer);
begin
  idplano_contas := pIdPlanoContas;
end;

procedure ClassContasPagar.setIdTipoCobranca(pIdTipoCobranca: integer);
begin
  idtipo_cobranca := pIdTipoCobranca;
end;

procedure ClassContasPagar.setPagoEm(pPagoEm: string);
begin
  pago_em := pPagoEm;
end;

procedure ClassContasPagar.setQuantParcelas(pQuantParcelas: integer);
begin
  quant_parcelas := pQuantParcelas;
end;

procedure ClassContasPagar.setTitulo(pTitulo: string);
begin
  titulo := pTitulo;
end;

procedure ClassContasPagar.setValor(pValor: double);
begin
  valor := pValor;
end;

procedure ClassContasPagar.setValorPago(pValorPago: double);
begin
  valor_pago := pValorPago;
end;

procedure ClassContasPagar.setVencimento(pVencimento: string);
begin
  vencimento := pVencimento;
end;

end.
