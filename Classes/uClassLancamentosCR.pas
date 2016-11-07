unit uClassLancamentosCR;

interface

type ClassLancamentosCR = class
  private
    idlancamentoCP : integer;
    idconta_receber : integer;
    data_recebimento : string;
    idconta_corrente : integer;
    idtipo_pagamento : integer;
    valor_recebido : double;
    observacao : string;
  public
    constructor cLancamentosCR;
    destructor dLancamentosCR;

    procedure setIdLancamentoCR(pIdLancamentoCR : integer);
    procedure setIdContaReceber(pIdContaReceber : integer);
    procedure setDataRecebimento(pDataReceber : string);
    procedure setIdContaCorrente(pContaCorrente : integer);
    procedure setIdTipoPagamento(pIdTipoPagamento : integer);
    procedure setValorRecebido(pValorRecebido : double);
    procedure setObservacao(pObservacao : string);

    function getIdLancamentoCP : integer;
    function getIdContaReceber : integer;
    function getDataRecebimento : string;
    function getIdContaCorrente : integer;
    function getIdTipoPagamento : integer;
    function getValorRecebido : double;
    function getObservacao : string;
end;

implementation

{ LancamentosCP }

constructor ClassLancamentosCR.cLancamentosCR;
begin
  self.idlancamentoCP := 0;
  self.idconta_receber := 0;
  self.data_recebimento := '';
  self.idconta_corrente := 0;
  self.idtipo_pagamento := 0;
  self.valor_recebido := 0;
  self.observacao := '';
end;

destructor ClassLancamentosCR.dLancamentosCR;
begin

end;

//GETS
function ClassLancamentosCR.getDataRecebimento: string;
begin
  result := self.data_recebimento;
end;

function ClassLancamentosCR.getIdContaCorrente: integer;
begin
  result := self.idconta_corrente;
end;

function ClassLancamentosCR.getIdContaReceber: integer;
begin
  result := self.idconta_receber;
end;

function ClassLancamentosCR.getIdLancamentoCP: integer;
begin
  result := self.idlancamentoCP;
end;

function ClassLancamentosCR.getIdTipoPagamento: integer;
begin
  result := self.idtipo_pagamento;
end;

function ClassLancamentosCR.getObservacao: string;
begin
  result := self.observacao;
end;

function ClassLancamentosCR.getValorRecebido: double;
begin
  result := self.valor_recebido;
end;


//SETS
procedure ClassLancamentosCR.setDataRecebimento(pDataReceber: string);
begin
  self.data_recebimento := pDataReceber;
end;

procedure ClassLancamentosCR.setIdContaCorrente(pContaCorrente: integer);
begin
  self.idconta_corrente := pContaCorrente;
end;

procedure ClassLancamentosCR.setIdContaReceber(pIdContaReceber: integer);
begin
  self.idconta_receber := pIdContaReceber;
end;

procedure ClassLancamentosCR.setIdLancamentoCR(pIdLancamentoCR: integer);
begin
  self.idlancamentoCP := pIdLancamentoCR;
end;

procedure ClassLancamentosCR.setIdTipoPagamento(pIdTipoPagamento: integer);
begin
  self.idtipo_pagamento := pIdTipoPagamento;
end;

procedure ClassLancamentosCR.setObservacao(pObservacao: string);
begin
  self.observacao := pObservacao;
end;

procedure ClassLancamentosCR.setValorRecebido(pValorRecebido: double);
begin
  self.valor_recebido := pValorRecebido;
end;

end.
