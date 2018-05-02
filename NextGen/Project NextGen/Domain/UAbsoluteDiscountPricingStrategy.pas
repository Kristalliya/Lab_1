unit UAbsoluteDiscountPricingStrategy;

interface

uses UISalePricingStrategy, Money, USale;

type
  TAbsoluteDiscountPricingStrategy = class(TISalePricingStrategy)
  private
    discount: TMoney;
    threshold: TMoney;
  public
    function getTotal(s: TSale): TMoney; override;
  end;

implementation

{ TAbsoluteDiscountPricingStrategy }

function TAbsoluteDiscountPricingStrategy.getTotal(Sale): Money;
var
  pdt: TMoney;
begin
  {pdt := s.getPreDiscountTotal();}
  if (pdt < threshold)
  then result := pdt
  else result := pdt - discount;
end;

end.
