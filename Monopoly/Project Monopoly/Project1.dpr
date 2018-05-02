program Project1;

uses
  Vcl.Forms,
  Unit1 in 'UI\Unit1.pas' {Form1},
  USquare in 'Domain\USquare.pas',
  UPiece in 'Domain\UPiece.pas',
  UDie in 'Domain\UDie.pas',
  UBoard in 'Domain\UBoard.pas',
  UPlayer in 'Domain\UPlayer.pas',
  UMonopolyGame in 'Domain\UMonopolyGame.pas',
  UCup in 'Domain\UCup.pas',
  Unit2 in 'UI\Unit2.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
