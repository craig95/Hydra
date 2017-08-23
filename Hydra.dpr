program Hydra;

uses
  Forms,
  hydra_u in 'hydra_u.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Hydra';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
