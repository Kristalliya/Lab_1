unit USale;

interface

uses Money, UProductDescription, USalesLineItem, UPayment,
  SysUtils, Generics.Collections, Generics.Defaults;

type
  TSale = class
  private
    lineItems: TList<TSalesLineItem>;
    Date: TDate;
    Complete: boolean; // isComplete
    payment: TPayment;
  published
    constructor create;
  public
    function getBalance: TMoney;
    procedure becomeComplete;
    function isComplete: boolean;
    procedure makeLineItem(desc: TProductDescription; quantity: integer);
    function getTotal: TMoney;
    procedure makePayment(cashTendered: TMoney);
  end;

implementation

uses UITaxCalculatorAdapter;
{ TSale }

procedure TSale.becomeComplete;
begin
  Complete := true;
end;

constructor TSale.create;
begin
  lineItems := TList<TSalesLineItem>.create;
  Complete := false;
  payment := TPayment.create;
end;

function TSale.getBalance: TMoney;
begin
  result := payment.getAmount - getTotal;
end;

function TSale.getTotal: TMoney;
var
  total, subtotal: TMoney;
  SalesLineItem: TSalesLineItem;
  itax:TITaxCalculatorAdapter;
begin
  total := 0;
  subtotal := 0;
  for SalesLineItem in lineItems do
  begin
    subtotal := SalesLineItem.getSubtotal;
    total := total + subtotal;
  end;
  result := total{-itax.getTaxes(};
end;

function TSale.isComplete: boolean;
begin
  result := Complete;
end;

procedure TSale.makeLineItem(desc: TProductDescription; quantity: integer);
var
  SalesLineItem: TSalesLineItem;
  i: integer;
begin
  SalesLineItem := TSalesLineItem.create;
  SalesLineItem.SalesLineItem(desc, quantity);
  i := lineItems.Add(SalesLineItem);
end;

procedure TSale.makePayment(cashTendered: TMoney);
begin
  payment := TPayment.create;
  payment.payment(cashTendered);
end;

end.
