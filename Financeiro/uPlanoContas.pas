unit uPlanoContas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.Win.ADODB, Vcl.StdCtrls, Vcl.Mask;

type
  TfrmPlanoContas = class(TForm)
    Label1: TLabel;
    chkAtivo: TCheckBox;
    btnCadastrar: TButton;
    btnVoltar: TButton;
    ADOCommand1: TADOCommand;
    edtTitulo: TEdit;
    Label2: TLabel;
    mskSequencia: TMaskEdit;
    procedure btnVoltarClick(Sender: TObject);
    procedure btnCadastrarClick(Sender: TObject);
  private
    procedure CadastrarPlanoContas;
  public
    { Public declarations }
  end;

var
  frmPlanoContas: TfrmPlanoContas;

implementation

{$R *.dfm}

procedure TfrmPlanoContas.btnCadastrarClick(Sender: TObject);
begin
  if (mskSequencia.Text = '  .  .  .  ') or (edtTitulo.Text = '') then
    Application.MessageBox('Não deixe os campos em branco!', 'Atenção',
      MB_OK + MB_ICONEXCLAMATION)
  else
  begin
    try
      self.CadastrarPlanoContas;

      mskSequencia.Text := '00000000';
      edtTitulo.Text := '';

      Application.MessageBox('Plano de Contas cadastrado com sucesso!', 'Concluído',
        MB_OK + MB_ICONINFORMATION);

      mskSequencia.SetFocus;
    except
      on e : Exception do
        Application.MessageBox('Não foi possível cadastrar o plano de contas!',
          'Erro ao cadastrar', MB_OK + MB_ICONSTOP);
    end;
  end;
end;


procedure TfrmPlanoContas.CadastrarPlanoContas;
begin
  if chkAtivo.Checked = true then
    ADOCommand1.CommandText := 'insert into plano_contas values(null, ' +
      mskSequencia.Text + ', "' + edtTitulo.Text + '", "S");'
  else
    ADOCommand1.CommandText := 'insert into plano_contas values(null, ' +
      mskSequencia.Text + ', "' + edtTitulo.Text + '", "N");';

  ADOCommand1.Execute;
end;


procedure TfrmPlanoContas.btnVoltarClick(Sender: TObject);
begin
  self.Close;
end;


end.
