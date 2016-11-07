unit uClassLancamentosCP;

interface

type ClassLancamentosCP = class
  private
    idlancamentoCP : integer;
    idconta_pagar : integer;
    data_pagamento : string;
    idconta_corrente : integer;
    idtipo_pagamento : integer;
    valor_pago : double;
    observacao : string;
  public
    constructor cLancamentosCP;
    destructor dLancamentosCP;

    procedure setIdLancamentoCP(pIdLancamentoCP : integer);
    procedure setIdContaPagar(pIdContaPagar : integer);
    procedure setDataPagamento(pDataPagamento : string);
    procedure setIdContaCorrente(pContaCorrente : integer);
    procedure setIdTipoPagamento(pIdTipoPagamento : integer);
    procedure setValorPago(pValorPago : double);
    procedure setObservacao(pObservacao : string);

    function getIdLancamentoCP : integer;
    function getIdContaPagar : integer;
    function getDataPagamento : string;
    function getIdContaCorrente : integer;
    function getIdTipoPagamento : integer;
    function getValorPago : double;
    function getObservacao : string;
end;

implementation

{ LancamentosCP }

constructor ClassLancamentosCP.cLancamentosCP;
begin
  self.idlancamentoCP := 0;
  self.idconta_pagar := 0;
  self.data_pagamento := '';
  self.idconta_corrente := 0;
  self.idtipo_pagamento := 0;
  self.valor_pago := 0;
  self.observacao := '';
end;

destructor ClassLancamentosCP.dLancamentosCP;
begin

end;

//GETS
function ClassLancamentosCP.getDataPagamento: string;
begin
  result := self.data_pagamento;
end;

function ClassLancamentosCP.getIdContaCorrente: integer;
begin
  result := self.idconta_corrente;
end;

function ClassLancamentosCP.getIdContaPagar: integer;
begin
  result := self.idconta_Pagar;
end;

function ClassLancamentosCP.getIdLancamentoCP: integer;
begin
  result := self.idlancamentoCP;
end;

function ClassLancamentosCP.getIdTipoPagamento: integer;
begin
  result := self.idtipo_pagamento;
end;

function ClassLancamentosCP.getObservacao: string;
begin
  result := self.observacao;
end;

function ClassLancamentosCP.getValorPago: double;
begin
  result := self.valor_pago;
end;


//SETS
procedure ClassLancamentosCP.setDataPagamento(pDataPagamento: string);
begin
  self.data_pagamento := pDataPagamento;
end;

procedure ClassLancamentosCP.setIdContaCorrente(pContaCorrente: integer);
begin
  self.idconta_corrente := pContaCorrente;
end;

procedure ClassLancamentosCP.setIdContaPagar(pIdContaPagar: integer);
begin
  self.idconta_Pagar := pIdContaPagar;
end;

procedure ClassLancamentosCP.setIdLancamentoCP(pIdLancamentoCP: integer);
begin
  self.idlancamentoCP := pIdLancamentoCP;
end;

procedure ClassLancamentosCP.setIdTipoPagamento(pIdTipoPagamento: integer);
begin
  self.idtipo_pagamento := pIdTipoPagamento;
end;

procedure ClassLancamentosCP.setObservacao(pObservacao: string);
begin
  self.observacao := pObservacao;
end;

procedure ClassLancamentosCP.setValorPago(pValorPago: double);
begin
  self.valor_pago := pValorPago;
end;

end.
