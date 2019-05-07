program Locadora;

uses
  Vcl.Forms,
  frmMain in 'frmMain.pas' {frmp},
  UDM in 'UDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrmp, frmp);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
