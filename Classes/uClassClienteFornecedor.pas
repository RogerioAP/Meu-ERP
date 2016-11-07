unit uClassClienteFornecedor;

interface

type ClassClienteFornecedor = class
  private
    //identificação
    idcliente_fornecedor : integer;
    tipo : string;
    pessoa : char;
    nome_razaosocial : string;
    ativo : char;
    apelido : string;
    cpf : string;
    cnpj : string;
    observacao : string;

    //endereço
    endereco : string;
    numero : string;
    bairro : string;
    cidade : string;
    estado : string;
    complemento : string;
    cep : string;

    //contato
    telefone : string;
    celular : string;
    email : string;

    idgrupo_cf : integer;
  public
    constructor cClassClienteFornecedor;
    destructor dClassClienteFornecedor;

    procedure setIdClienteFornecedor(pIdClienteFornecedor : integer);
    procedure setTipo(pTipo : string);
    procedure setPessoa(pPessoa : char);
    procedure setNomeRazaoSocial(pNomeRazaoSocial : string);
    procedure setIdGrupoCF(pIdGrupoCF : integer);
    procedure setAtivo(pAtivo : char);
    procedure setApelido(pApelido : string);
    procedure setCPF(pCPF : string);
    procedure setCNPJ(pCNPJ : string);
    procedure setObservacao(pObservacao : string);

    procedure setEndereco(pEndereco : string);
    procedure setNumero(pNumero : string);
    procedure setBairro(pBairro : string);
    procedure setCidade(pCidade : string);
    procedure setEstado(pEstado : string);
    procedure setComplemento(pComplemento : string);
    procedure setCEP(pCEP : string);

    procedure setTelefone(pTelefone : string);
    procedure setCelular(pCelular : string);
    procedure setEmail(pEmail : string);


    function getIdClienteFornecedor : integer;
    function getTipo : string;
    function getPessoa : char;
    function getNomeRazaoSocial : string;
    function getIdGrupoCF : integer;
    function getAtivo : char;
    function getApelido : string;
    function getCPF : string;
    function getCNPJ : string;
    function getObservacao : string;

    function getEndereco : string;
    function getNumero : string;
    function getBairro : string;
    function getCidade : string;
    function getEstado : string;
    function getComplemento : string;
    function getCEP : string;

    function getTelefone : string;
    function getCelular : string;
    function getEmail : string;
end;

implementation

{ ClassClienteFornecedor }

constructor ClassClienteFornecedor.cClassClienteFornecedor;
begin
  idcliente_fornecedor := 0;
  tipo := '';
  pessoa := 'F';
  nome_razaosocial := '';
end;

destructor ClassClienteFornecedor.dClassClienteFornecedor;
begin
  //destrutor
end;

function ClassClienteFornecedor.getApelido: string;
begin
  result := apelido;
end;

function ClassClienteFornecedor.getAtivo: char;
begin
  result := ativo;
end;

function ClassClienteFornecedor.getBairro: string;
begin
  result := bairro;
end;

function ClassClienteFornecedor.getCelular: string;
begin
  result := celular;
end;

function ClassClienteFornecedor.getCEP: string;
begin
  result := cep;
end;

function ClassClienteFornecedor.getCidade: string;
begin
  result := cidade;
end;

function ClassClienteFornecedor.getCNPJ: string;
begin
  result := cnpj;
end;

function ClassClienteFornecedor.getComplemento: string;
begin
  result := complemento;
end;

function ClassClienteFornecedor.getCPF: string;
begin
  result := cpf;
end;

function ClassClienteFornecedor.getEmail: string;
begin
  result := email;
end;

function ClassClienteFornecedor.getEndereco: string;
begin
  result := endereco;
end;

function ClassClienteFornecedor.getEstado: string;
begin
  result := estado;
end;

function ClassClienteFornecedor.getIdClienteFornecedor: integer;
begin
  result := idcliente_fornecedor;
end;

function ClassClienteFornecedor.getIdGrupoCF: integer;
begin
  result := idgrupo_cf;
end;

function ClassClienteFornecedor.getNomeRazaoSocial: string;
begin
  result := nome_razaosocial;
end;

function ClassClienteFornecedor.getNumero: string;
begin
  result := numero;
end;

function ClassClienteFornecedor.getObservacao: string;
begin
  result := observacao;
end;

function ClassClienteFornecedor.getPessoa: char;
begin
  result := pessoa;
end;

function ClassClienteFornecedor.getTelefone: string;
begin
  result := telefone;
end;

function ClassClienteFornecedor.getTipo: string;
begin
  result := tipo;
end;


//SET
procedure ClassClienteFornecedor.setApelido(pApelido: string);
begin
  apelido := pApelido;
end;

procedure ClassClienteFornecedor.setAtivo(pAtivo: char);
begin
  ativo := pAtivo;
end;

procedure ClassClienteFornecedor.setBairro(pBairro: string);
begin
  bairro := pBairro;
end;

procedure ClassClienteFornecedor.setCelular(pCelular: string);
begin
  celular := pCelular;
end;

procedure ClassClienteFornecedor.setCEP(pCEP: string);
begin
  cep := pCEP;
end;

procedure ClassClienteFornecedor.setCidade(pCidade: string);
begin
  cidade := pCidade;
end;

procedure ClassClienteFornecedor.setCNPJ(pCNPJ: string);
begin
  cnpj := pCNPJ;
end;

procedure ClassClienteFornecedor.setComplemento(pComplemento: string);
begin
  complemento := pComplemento;
end;

procedure ClassClienteFornecedor.setCPF(pCPF: string);
begin
  cpf := pCPF;
end;

procedure ClassClienteFornecedor.setEmail(pEmail: string);
begin
  email := pEmail;
end;

procedure ClassClienteFornecedor.setEndereco(pEndereco: string);
begin
  endereco := pEndereco;
end;

procedure ClassClienteFornecedor.setEstado(pEstado: string);
begin
  estado := pEstado;
end;

procedure ClassClienteFornecedor.setIdClienteFornecedor(
  pIdClienteFornecedor: integer);
begin
  idcliente_fornecedor := pIdClienteFornecedor;
end;

procedure ClassClienteFornecedor.setIdGrupoCF(pIdGrupoCF: integer);
begin
  idgrupo_cf := pIdGrupoCF;
end;

procedure ClassClienteFornecedor.setNomeRazaoSocial(pNomeRazaoSocial: string);
begin
  nome_razaosocial := pNomeRazaoSocial;
end;

procedure ClassClienteFornecedor.setNumero(pNumero: string);
begin
  numero := pNumero;
end;

procedure ClassClienteFornecedor.setObservacao(pObservacao: string);
begin
  observacao := pObservacao;
end;

procedure ClassClienteFornecedor.setPessoa(pPessoa: char);
begin
  pessoa := pPessoa;
end;

procedure ClassClienteFornecedor.setTelefone(pTelefone: string);
begin
  telefone := pTelefone;
end;

procedure ClassClienteFornecedor.setTipo(pTipo: string);
begin
  tipo := pTipo;
end;

end.
