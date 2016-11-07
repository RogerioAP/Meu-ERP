object dmImprimir: TdmImprimir
  OldCreateOrder = False
  Height = 234
  Width = 341
  object ACBrBoleto1: TACBrBoleto
    Banco.Numero = 341
    Banco.TamanhoMaximoNossoNum = 8
    Banco.TipoCobranca = cobItau
    Cedente.TipoInscricao = pJuridica
    NumeroArquivo = 0
    ACBrBoletoFC = ACBrBoletoFCFortes1
    Left = 48
    Top = 16
  end
  object ACBrBoletoFCFortes1: TACBrBoletoFCFortes
    ACBrBoleto = ACBrBoleto1
    DirLogo = '..\..\img'
    MostrarSetup = False
    SoftwareHouse = 'A Empresa'
    Left = 136
    Top = 8
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 184
    Top = 136
  end
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL.1;Password=123456;Persist Security Info=True;Us' +
      'er ID=root;Data Source=MeuERP'
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    Left = 104
    Top = 128
  end
end
