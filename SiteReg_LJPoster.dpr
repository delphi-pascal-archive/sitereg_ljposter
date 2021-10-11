program SiteReg_LJPoster;

uses
  Forms,
  sary in 'sary.pas' {Form1},
  reg_window in 'reg_window.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
