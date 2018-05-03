unit USale;

interface

uses Money, UProductDescription, USalesLineItem, UPayment,
  SysUtils, Generics.Collections, Generics.Defaults;

type
  ISale = class
    function getBalance: TMoney;virtual;abstract;
    procedure becomeComplete;virtual;abstract;
    function isComplete: boolean;virtual;abstract;
    procedure makeLineItem(desc: TProductDescription; quantity: integer);virtual;abstract;
    function getTotal: TMoney;virtual;abstract;
    procedure makePayment(cashTendered: TMoney);virtual;abstract;
  end;

  TSale = class(ISale)
  private
    lineItems: TList<TSalesLineItem>;
    Date: TDate;
    Complete: boolean; // isComplete
    payment: TPayment;
  published
    constructor create;
  public
    function getBalance: TMoney;override;
    procedure becomeComplete;override;
    function isComplete: boolean;override;
    procedure makeLineItem(desc: TProductDescription; quantity: integer);override;
    function getTotal: TMoney;override;
    procedure makePayment(cashTendered: TMoney);override;
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
