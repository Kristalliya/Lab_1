program Project1;

uses
  Vcl.Forms,
  Unit1 in 'UI\Unit1.pas' {Form1},
  UProductCatalog in 'Domain\UProductCatalog.pas',
  UProductDescription in 'Domain\UProductDescription.pas',
  UPayment in 'Domain\UPayment.pas',
  USalesLineItem in 'Domain\USalesLineItem.pas',
  USale in 'Domain\USale.pas',
  URegister in 'Domain\URegister.pas',
  UStore in 'Domain\UStore.pas',
  Money in 'src\Money.pas',
  ItemID in 'src\ItemID.pas',
  UConnect in 'src\UConnect.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
