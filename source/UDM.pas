unit UDM;

interface

uses
  System.SysUtils, System.Classes, Data.DBXFirebird, Data.DB, Data.SqlExpr,
  Data.FMTBcd, Datasnap.DBClient, Datasnap.Provider;

type
  TDM = class(TDataModule)
    SQLConnection1: TSQLConnection;
    sqlGenerico: TSQLDataSet;
    dspGenerico: TDataSetProvider;
    cdsClientes: TClientDataSet;
    cdsClientesID_CLIENTE: TIntegerField;
    cdsClientesNOME_CLIENTE: TStringField;
    spCliente: TSQLStoredProc;
    spClienteDel: TSQLStoredProc;
    cdsUsuarios: TClientDataSet;
    spUsuarios: TSQLStoredProc;
    spUsuariosDel: TSQLStoredProc;
    cdsUsuariosID_USUARIO: TIntegerField;
    cdsUsuariosNOME: TStringField;
    cdsUsuariosLOGIN: TStringField;
    cdsUsuariosSENHA: TStringField;
    cdsUsuariosADM: TStringField;
    procedure cdsClientesBeforeDelete(DataSet: TDataSet);
    procedure cdsClientesBeforePost(DataSet: TDataSet);
    procedure cdsClientesNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.cdsClientesBeforeDelete(DataSet: TDataSet);
begin
  with spClienteDel do
  begin
    Params[0].AsInteger := cdsClientesID_CLIENTE.AsInteger;
    ExecProc;
  end;
end;

procedure TDM.cdsClientesBeforePost(DataSet: TDataSet);
begin
  with spCliente do
  begin
  Params[0].AsInteger := cdsClientesID_CLIENTE.AsInteger;
  Params[1].AsString := cdsClientesNOME_CLIENTE.AsString;
  ExecProc;
  end
end;

procedure TDM.cdsClientesNewRecord(DataSet: TDataSet);
begin
   cdsClientesID_CLIENTE.AsInteger :=0;
end;

end.
