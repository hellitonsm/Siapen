program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form_U},
  Unit2 in 'Unit2.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm_U, Form_U);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
