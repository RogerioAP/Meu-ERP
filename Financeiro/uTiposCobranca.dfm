object frmTiposCobranca: TfrmTiposCobranca
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Tipo de Cobran'#231'a'
  ClientHeight = 159
  ClientWidth = 410
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
    Left = 52
    Top = 72
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object edtNome: TEdit
    Left = 85
    Top = 69
    Width = 272
    Height = 21
    TabOrder = 0
  end
  object chkAtivo: TCheckBox
    Left = 85
    Top = 31
    Width = 49
    Height = 17
    Caption = 'Ativo'
    Checked = True
    State = cbChecked
    TabOrder = 1
  end
  object btnCadastrar: TButton
    Left = 127
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 2
    OnClick = btnCadastrarClick
  end
  object btnVoltar: TButton
    Left = 208
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
    Left = 344
    Top = 104
  end
end
