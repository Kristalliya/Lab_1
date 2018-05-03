unit UAbsoluteDiscountPricingStrategy;

interface

uses UISalePricingStrategy, Money, USale;

type
  TAbsoluteDiscountPricingStrategy = class(TISalePricingStrategy)
  private
    discount: TMoney;
    threshold: TMoney;
  public
    function getTotal(sale: TSale): TMoney; override;
  end;

implementation

{ TAbsoluteDiscountPricingStrategy }

function TAbsoluteDiscountPricingStrategy.getTotal(sale:TSale): TMoney;
var
  pdt: TMoney;
begin
  {pdt := sale.getPreDiscountTotal();}
  if (pdt < threshold)
  then result := pdt
  else result := pdt - discount;
end;

end.
