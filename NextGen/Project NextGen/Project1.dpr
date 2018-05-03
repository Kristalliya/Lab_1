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
  UConnect in 'src\UConnect.pas',
  UTaxLineItems in 'src\UTaxLineItems.pas',
  Unit2 in 'UI\Unit2.pas' {Form2},
  Unit3 in 'UI\Unit3.pas' {Form3},
  UAbsoluteDiscountPricingStrategy in 'Domain\Strategy\UAbsoluteDiscountPricingStrategy.pas',
  UISalePricingStrategy in 'Domain\Strategy\UISalePricingStrategy.pas',
  UPercentDiscountPricingStrategy in 'Domain\Strategy\UPercentDiscountPricingStrategy.pas',
  UGoodAsGoldTaxProAdapter in 'Domain\Adapter\UGoodAsGoldTaxProAdapter.pas',
  UITaxCalculatorAdapter in 'Domain\Adapter\UITaxCalculatorAdapter.pas',
  UTaxMasterAdapter in 'Domain\Adapter\UTaxMasterAdapter.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
