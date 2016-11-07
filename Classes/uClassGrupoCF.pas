unit uClassGrupoCF;

interface

//Grupo Cliente/Fornecedor
type ClassGrupoCF = class
  private
    idgrupocf : integer;
    nome : string;
    ativo : char;
  public
    constructor cGrupoCF;
    destructor dGrupoCF;

    procedure setIdGrupoCF(pIdGrupoCF : integer);
    procedure setNome(pNome : string);
    procedure setAtivo(pAtivo : char);

    function getIdGrupoCF : integer;
    function getNome : string;
    function getAtivo : char;
end;

implementation

{ ClassGrupoCF }

constructor ClassGrupoCF.cGrupoCF;
begin
  idgrupocf := 0;
  nome := '';
  ativo := 'S';
end;

destructor ClassGrupoCF.dGrupoCF;
begin

end;

function ClassGrupoCF.getAtivo: char;
begin
  result := self.ativo;
end;

function ClassGrupoCF.getIdGrupoCF: integer;
begin
  result := self.idgrupocf;
end;

function ClassGrupoCF.getNome: string;
begin
  result := self.nome;
end;

procedure ClassGrupoCF.setAtivo(pAtivo: char);
begin
  self.ativo := pAtivo;
end;

procedure ClassGrupoCF.setIdGrupoCF(pIdGrupoCF: integer);
begin
  self.idgrupocf := pIdGrupoCF;
end;

procedure ClassGrupoCF.setNome(pNome: string);
begin
  self.nome := pNome;
end;

end.
