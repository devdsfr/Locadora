object DM: TDM
  OldCreateOrder = False
  Height = 273
  Width = 528
  object SQLConnection1: TSQLConnection
    ConnectionName = 'FBConnection'
    DriverName = 'Firebird'
    LoadParamsOnConnect = True
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXFirebird'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver250.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=24.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFire' +
        'birdDriver250.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandF' +
        'actory,Borland.Data.DbxFirebirdDriver,Version=24.0.0.0,Culture=n' +
        'eutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverINTERBASE'
      'LibraryName=dbxfb.dll'
      'LibraryNameOsx=libsqlfb.dylib'
      'VendorLib=fbclient.dll'
      'VendorLibWin64=fbclient.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'TrimChar=False'
      'DriverName=Firebird'
      
        'Database=C:\Users\Daniel\Desktop\Jobs\Locadora\database\LOCADORA' +
        '.FDB'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'IsolationLevel=ReadCommitted'
      'Trim Char=False')
    Connected = True
    Left = 24
    Top = 16
  end
  object sqlGenerico: TSQLDataSet
    CommandText = 'select * from CLIENTES where ID_CLIENTE=:ID_CLIENTE'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_CLIENTE'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection1
    Left = 96
    Top = 16
  end
  object dspGenerico: TDataSetProvider
    DataSet = sqlGenerico
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 160
    Top = 16
  end
  object cdsClientes: TClientDataSet
    Active = True
    Aggregates = <>
    CommandText = 'select * from CLIENTES where ID_CLIENTE=:ID_CLIENTE'
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_CLIENTE'
        ParamType = ptUnknown
      end>
    ProviderName = 'dspGenerico'
    BeforePost = cdsClientesBeforePost
    BeforeDelete = cdsClientesBeforeDelete
    OnNewRecord = cdsClientesNewRecord
    Left = 16
    Top = 104
    object cdsClientesID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsClientesNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Required = True
      Size = 50
    end
  end
  object spCliente: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'ID_CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Precision = 50
        Name = 'NOME_CLIENTE'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection1
    StoredProcName = 'CLIENTES_IU'
    Left = 16
    Top = 160
  end
  object spClienteDel: TSQLStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Precision = 4
        Name = 'ID_CLIENTE'
        ParamType = ptInput
      end>
    SQLConnection = SQLConnection1
    StoredProcName = 'CLIENTES_D'
    Left = 16
    Top = 216
  end
end
