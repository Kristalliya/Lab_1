unit UServicesFactory;

interface

uses UIAccountingAdapter,UIInventoryAdapter,UITaxCalculatorAdapter,
SysUtils, Generics.Collections, Generics.Defaults;

type
  TServicesFactory = class
  private
  instance:TServicesFactory;
  accountingAdapter : TIAccountingAdapter;
  inventoruAdapter:TIInventoryAdapter;
  taxCalculatorAdapter:TITaxCalculatorAdapter;
  public
    function getAccountingAdapter():TIAccountingAdapter;
    function getInventoryAdapter():TIInventoryAdapter;
    function getTaxCalculatorAdapter():TITaxCalculatorAdapter;
    function getInstance():TServicesFactory;//static;
  end;

implementation

{ TServicesFactory }

function TServicesFactory.getAccountingAdapter: TIAccountingAdapter;
var Name:string;
begin
  if taxCalculatorAdapter=false then
  begin
    Name:=taxCalculatorAdapter.ClassName;
    taxCalculatorAdapter := TITaxCalculatorAdapter.ClassNameIs(name);
  end;
  result:=taxCalculatorAdapter;
end;

function TServicesFactory.getInstance: TServicesFactory;
begin
  if instance=false then
    instance:=TServicesFactory.Create;
  result:=instance;
end;

function TServicesFactory.getInventoryAdapter: TIInventoryAdapter;
begin
  //
end;

function TServicesFactory.getTaxCalculatorAdapter: TITaxCalculatorAdapter;
begin
  //
end;

end.
