unit uTiposPagamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.Win.ADODB, Vcl.StdCtrls;

type
  TfrmTiposPagamento = class(TForm)
    Label1: TLabel;
    edtNome: TEdit;
    chkAtivo: TCheckBox;
    btnCadastrar: TButton;
    btnVoltar: TButton;
    ADOCommand1: TADOCommand;
    procedure btnVoltarClick(Sender: TObject);
    procedure btnCadastrarClick(Sender: TObject);
  private
    procedure CadastrarTipoPagamento;
  public
    { Public declarations }
  end;

var
  frmTiposPagamento: TfrmTiposPagamento;

implementation

{$R *.dfm}

procedure TfrmTiposPagamento.btnCadastrarClick(Sender: TObject);
begin
  if edtNome.Text = '' then
    Application.MessageBox('Não deixe o campo em branco!', 'Atenção',
      MB_OK + MB_ICONEXCLAMATION)
  else
  begin
    try
    begin
      self.CadastrarTipoPagamento;

      edtNome.Text := '';
      chkAtivo.Checked := true;

      Application.MessageBox('Tipo de Pagamento cadastrado com sucesso!', 'Concluído',
        MB_OK + MB_ICONINFORMATION);

      edtNome.SetFocus;
    end;
    except
      on e : Exception do
        Application.MessageBox('Não foi possível cadastrar o tipo de pagamento!',
          'Erro ao cadastrar', MB_OK + MB_ICONSTOP);
    end;
  end;
end;


procedure TfrmTiposPagamento.CadastrarTipoPagamento;
begin
  if chkAtivo.Checked = true then
    ADOCommand1.CommandText := 'insert into tipo_pagamento values(null, "' +
      edtNome.Text + '", "S");'
  else
    ADOCommand1.CommandText := 'insert into tipo_pagamento values(null, "' +
      edtNome.Text + '", "N");';

  ADOCommand1.Execute;
end;


procedure TfrmTiposPagamento.btnVoltarClick(Sender: TObject);
begin
  self.Close;
end;

end.
