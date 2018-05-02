unit UPercentageDiscountPricingStrategy;

interface

uses UISalePricingStrategy, Money, USale;

type
  TPercentageDiscountPricingStrategy = class(TISalePricingStrategy)
  private
    percentage: real;
  public
    function getTotal(s: TSale): TMoney; override;
  end;

implementation

{ TPercentageDiscountPricingStrategy }

function TPercentageDiscountPricingStrategy.getTotal(s: TSale): Money;
begin
  result := { s.getPreDiscountTotal()* } percentage;
end;

end.
