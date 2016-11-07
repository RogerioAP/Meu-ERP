object frmTiposPagamento: TfrmTiposPagamento
  Left = 0
  Top = 0
  Caption = 'Tipo de Pagamento'
  ClientHeight = 155
  ClientWidth = 390
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 43
    Top = 64
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object edtNome: TEdit
    Left = 76
    Top = 61
    Width = 272
    Height = 21
    TabOrder = 0
  end
  object chkAtivo: TCheckBox
    Left = 76
    Top = 23
    Width = 49
    Height = 17
    Caption = 'Ativo'
    Checked = True
    State = cbChecked
    TabOrder = 1
  end
  object btnCadastrar: TButton
    Left = 117
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 2
    OnClick = btnCadastrarClick
  end
  object btnVoltar: TButton
    Left = 198
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Voltar'
    TabOrder = 3
    OnClick = btnVoltarClick
  end
  object ADOCommand1: TADOCommand
    ConnectionString = 
      'Provider=MSDASQL.1;Password=123456;Persist Security Info=True;Us' +
      'er ID=root;Data Source=MeuERP'
    Parameters = <>
    Left = 312
    Top = 96
  end
end
