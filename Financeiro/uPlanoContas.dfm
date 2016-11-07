object frmPlanoContas: TfrmPlanoContas
  Left = 0
  Top = 0
  Caption = 'Plano de Contas'
  ClientHeight = 201
  ClientWidth = 447
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
    Left = 58
    Top = 65
    Width = 53
    Height = 13
    Caption = 'Sequ'#234'ncia:'
  end
  object Label2: TLabel
    Left = 81
    Top = 105
    Width = 30
    Height = 13
    Caption = 'T'#237'tulo:'
  end
  object chkAtivo: TCheckBox
    Left = 117
    Top = 31
    Width = 49
    Height = 17
    Caption = 'Ativo'
    Checked = True
    State = cbChecked
    TabOrder = 4
  end
  object btnCadastrar: TButton
    Left = 146
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 2
    OnClick = btnCadastrarClick
  end
  object btnVoltar: TButton
    Left = 227
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Voltar'
    TabOrder = 3
    OnClick = btnVoltarClick
  end
  object edtTitulo: TEdit
    Left = 117
    Top = 102
    Width = 272
    Height = 21
    TabOrder = 1
  end
  object mskSequencia: TMaskEdit
    Left = 117
    Top = 62
    Width = 116
    Height = 21
    EditMask = '##.##.##.##;0;_'
    MaxLength = 11
    TabOrder = 0
    Text = '00000000'
  end
  object ADOCommand1: TADOCommand
    ConnectionString = 
      'Provider=MSDASQL.1;Password=123456;Persist Security Info=True;Us' +
      'er ID=root;Data Source=MeuERP'
    Parameters = <>
    Left = 392
    Top = 144
  end
end
