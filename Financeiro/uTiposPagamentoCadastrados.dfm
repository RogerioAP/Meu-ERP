object frmTiposPagamentoCadastrados: TfrmTiposPagamentoCadastrados
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Tipos de Pagamento'
  ClientHeight = 219
  ClientWidth = 421
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 10
    Top = 20
    Width = 401
    Height = 150
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
  end
  object btnVoltar: TButton
    Left = 254
    Top = 182
    Width = 75
    Height = 25
    Caption = 'Voltar'
    TabOrder = 1
    OnClick = btnVoltarClick
  end
  object btnNovo: TButton
    Left = 92
    Top = 182
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 2
    OnClick = btnNovoClick
  end
  object btnExcluir: TButton
    Left = 173
    Top = 182
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 3
    OnClick = btnExcluirClick
  end
  object ADOTable1: TADOTable
    Active = True
    ConnectionString = 
      'Provider=MSDASQL.1;Password=123456;Persist Security Info=True;Us' +
      'er ID=root;Data Source=MeuERP'
    CursorType = ctStatic
    TableName = 'tipo_pagamento'
    Left = 304
    Top = 168
    object ADOTable1idtipo_pagamento: TAutoIncField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 7
      FieldName = 'idtipo_pagamento'
      ReadOnly = True
    end
    object ADOTable1nome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Size = 45
    end
    object ADOTable1ativo: TWideStringField
      Alignment = taCenter
      DisplayLabel = 'Ativo'
      DisplayWidth = 7
      FieldName = 'ativo'
      FixedChar = True
      Size = 1
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 368
    Top = 168
  end
  object ADOCommand1: TADOCommand
    ConnectionString = 
      'Provider=MSDASQL.1;Password=123456;Persist Security Info=True;Us' +
      'er ID=root;Data Source=MeuERP'
    Parameters = <>
    Left = 344
    Top = 120
  end
end
