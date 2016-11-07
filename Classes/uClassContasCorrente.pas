unit uClassContasCorrente;

interface

type ClassContasCorrente = class
  private
    idconta_corrente : integer;
    idbanco : integer;
    nome : string;
    agencia : integer;
    digito_agencia : integer;
    conta : integer;
    digito_conta : integer;
    saldo : double;
    impressao_boleto : char;
    ativo : char;
  public
    constructor cContasCorrente;
    destructor dConstasCorrente;

    procedure setIdContaCorrente(pIdContaCorrente : integer);
    procedure setIdBanco(pIdBanco : integer);
    procedure setNome(pNome : string);
    procedure setAgencia(pAgencia : integer);
    procedure setDigitoAgencia(pDigitoAgencia : integer);
    procedure setConta(pConta : integer);
    procedure setDigitoConta(pDigitoConta : integer);
    procedure setSaldo(pSaldo : double);
    procedure setImpressaoBoleto(pImpressaoBoleto : char);
    procedure setAtivo(pAtivo : char);

    function getIdContaCorrente : integer;
    function getIdBanco : integer;
    function getNome : string;
    function getAgencia : integer;
    function getDigitoAgencia : integer;
    function getConta : integer;
    function getDigitoConta : integer;
    function getSaldo : double;
    function getImpressoaBoleto : char;
    function getAtivo : char;
end;

implementation

{ ClassContasCorrente }


constructor ClassContasCorrente.cContasCorrente;
begin
  self.idconta_corrente := 0;
  self.idbanco := 0;
  self.nome := '';
  self.agencia := 0;
  self.digito_agencia := 0;
  self.conta := 0;
  self.digito_conta := 0;
  self.saldo := 0;
  self.impressao_boleto := 'N';
  self.ativo := 'S';
end;

destructor ClassContasCorrente.dConstasCorrente;
begin

end;

//GETS
function ClassContasCorrente.getAgencia: integer;
begin
  result := self.agencia;
end;

function ClassContasCorrente.getAtivo: char;
begin
  result := self.ativo;
end;

function ClassContasCorrente.getConta: integer;
begin
  result := self.conta;
end;

function ClassContasCorrente.getDigitoAgencia: integer;
begin
  result := self.digito_agencia;
end;

function ClassContasCorrente.getDigitoConta: integer;
begin
  result := self.digito_conta;
end;

function ClassContasCorrente.getIdBanco: integer;
begin
  result := self.idbanco;
end;

function ClassContasCorrente.getIdContaCorrente: integer;
begin
  result := self.idconta_corrente;
end;

function ClassContasCorrente.getImpressoaBoleto: char;
begin
  result := self.impressao_boleto;
end;

function ClassContasCorrente.getNome: string;
begin
  result := self.nome;
end;

function ClassContasCorrente.getSaldo: double;
begin
  result := self.saldo;
end;


//SETS
procedure ClassContasCorrente.setAgencia(pAgencia: integer);
begin
  self.agencia := pAgencia;
end;

procedure ClassContasCorrente.setAtivo(pAtivo: char);
begin
  self.ativo := pAtivo;
end;

procedure ClassContasCorrente.setConta(pConta: integer);
begin
  self.conta := pConta;
end;

procedure ClassContasCorrente.setDigitoAgencia(pDigitoAgencia: integer);
begin
  self.digito_agencia := pDigitoAgencia;
end;

procedure ClassContasCorrente.setDigitoConta(pDigitoConta: integer);
begin
  self.digito_conta := pDigitoConta;
end;

procedure ClassContasCorrente.setIdBanco(pIdBanco: integer);
begin
  self.idbanco := pIdBanco;
end;

procedure ClassContasCorrente.setIdContaCorrente(pIdContaCorrente: integer);
begin
  self.idconta_corrente := pIdContaCorrente;
end;

procedure ClassContasCorrente.setImpressaoBoleto(pImpressaoBoleto: char);
begin
  self.impressao_boleto := pImpressaoBoleto;
end;

procedure ClassContasCorrente.setNome(pNome: string);
begin
  self.nome := pNome;
end;

procedure ClassContasCorrente.setSaldo(pSaldo: double);
begin
  self.saldo := pSaldo;
end;

end.
