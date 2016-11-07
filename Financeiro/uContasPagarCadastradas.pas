unit uContasPagarCadastradas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Data.Win.ADODB, uContasPagar, uBaixarTituloLancamentosCP;

type
  TfrmContasPagarCadastradas = class(TForm)
    DBGrid1: TDBGrid;
    btnVoltar: TButton;
    btnNova: TButton;
    btnExcluir: TButton;
    btnBaixar: TButton;
    ADOCommand1: TADOCommand;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    ADOConnection1: TADOConnection;
    ADOQuery1Código: TAutoIncField;
    ADOQuery1DatadeCadastro: TWideStringField;
    ADOQuery1Título: TWideStringField;
    ADOQuery1Vencimento: TWideStringField;
    ADOQuery1Valor: TFloatField;
    ADOQuery1ÀPagar: TFloatField;
    ADOQuery1Pagoem: TWideStringField;
    ADOQuery1ValorPago: TFloatField;
    procedure btnVoltarClick(Sender: TObject);
    procedure btnNovaClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnBaixarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnImprimirBoletoClick(Sender: TObject);
  private
    contas_pagar : TfrmContasPagar;
    baixar_tituloL : TfrmBaixarTituloLancamentosCP;
    procedure ImprimirBoleto;
  public
    { Public declarations }
  end;

var
  frmContasPagarCadastradas: TfrmContasPagarCadastradas;

implementation

{$R *.dfm}


procedure TfrmContasPagarCadastradas.btnBaixarClick(Sender: TObject);
begin
  if DBGrid1.Fields[0].AsString <> '' then
  begin
    self.baixar_tituloL := TfrmBaixarTituloLancamentosCP.Create(nil);

    self.baixar_tituloL.idconta_pagar := DBGrid1.Fields[0].AsString;

    if DBGrid1.Fields[5].AsString = '0' then
      self.baixar_tituloL.tbsBaixaTitulo.TabVisible := false
    else
    begin
      self.baixar_tituloL.valor_a_pagar := StrToFloat(DBGrid1.Fields[5].AsString);
      self.baixar_tituloL.edtSaldoDevedor.Text := DBGrid1.Fields[5].AsString;
    end;

    self.baixar_tituloL.ShowModal;

    self.baixar_tituloL.Destroy;

    self.ADOQuery1.Active := false;
    self.ADOQuery1.Active := true;

    self.btnVoltar.SetFocus;
  end;
end;


procedure TfrmContasPagarCadastradas.btnEditarClick(Sender: TObject);
begin
  ShowMessage('Funcionalidade ainda não inplementada!');
end;


procedure TfrmContasPagarCadastradas.btnExcluirClick(Sender: TObject);
begin
  if DBGrid1.Fields[0].AsString <> '' then
    if Application.MessageBox('Tem certeza que deseja excluir essa conta à pagar?',
      'Confirmação', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = IDYES then
    begin
      ADOCommand1.CommandText := 'delete from contas_pagar where idconta_pagar=' +
        DBGrid1.Fields[0].AsString + ';';

      try
        ADOCommand1.Execute;

        self.ADOQuery1.Active := false;
        self.ADOQuery1.Active := true;

        Application.MessageBox('Conta à pagar excluída com sucesso!', 'Concluído',
          MB_OK + MB_ICONINFORMATION);
      except
        on e : Exception do
          Application.MessageBox('Não foi possível excluir o dado selecionado'#10'porque ele tem relação com outro dado cadastrado!',
            'Erro ao excluir', MB_OK + MB_ICONSTOP);
      end;
    end;

  self.btnVoltar.SetFocus;
end;

procedure TfrmContasPagarCadastradas.btnImprimirBoletoClick(Sender: TObject);
begin
  try
    self.ImprimirBoleto;
  except
    on e : Exception do
      Application.MessageBox('Não foi possível imprimir boleto', 'Erro ao imprimir',
        MB_OK + MB_ICONSTOP);
  end;
end;

procedure TfrmContasPagarCadastradas.ImprimirBoleto;
begin

end;

procedure TfrmContasPagarCadastradas.btnNovaClick(Sender: TObject);
begin
  self.contas_pagar := TfrmContasPagar.Create(nil);
  self.contas_pagar.ShowModal;

  self.ADOQuery1.Active := false;
  self.ADOQuery1.Active := true;
end;

procedure TfrmContasPagarCadastradas.btnVoltarClick(Sender: TObject);
begin
  self.Close;
end;

procedure TfrmContasPagarCadastradas.FormCreate(Sender: TObject);
begin
  self.ADOQuery1.Active := true;
end;

end.
