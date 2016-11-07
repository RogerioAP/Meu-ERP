object frmBancos: TfrmBancos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Bancos'
  ClientHeight = 213
  ClientWidth = 473
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 62
    Top = 67
    Width = 37
    Height = 13
    Caption = 'C'#243'digo:'
  end
  object Label2: TLabel
    Left = 68
    Top = 107
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object edtCodigo: TEdit
    Left = 105
    Top = 64
    Width = 81
    Height = 21
    TabOrder = 0
  end
  object edtNome: TEdit
    Left = 105
    Top = 104
    Width = 305
    Height = 21
    TabOrder = 1
  end
  object chkAtivo: TCheckBox
    Left = 105
    Top = 32
    Width = 57
    Height = 17
    Caption = 'Ativo'
    Checked = True
    State = cbChecked
    TabOrder = 2
  end
  object brnCadastrar: TButton
    Left = 159
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 3
    OnClick = brnCadastrarClick
  end
  object Button2: TButton
    Left = 240
    Top = 168
    Width = 75
    Height = 25
    Caption = 'Voltar'
    TabOrder = 4
    OnClick = Button2Click
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Password=123456;Persist Security Info=True;Us' +
      'er ID=root;Data Source=MeuERP'
    LoginPrompt = False
    Left = 320
    Top = 16
  end
  object ADOCommand1: TADOCommand
    Connection = ADOConnection1
    Parameters = <>
    Left = 416
    Top = 16
  end
end
