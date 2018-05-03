unit UPercentDiscountPricingStrategy;

interface

uses UISalePricingStrategy, Money, USale;

type
  TPercentageDiscountPricingStrategy = class(TISalePricingStrategy)
  private
    percentage: TMoney;   //real
  public
    function getTotal(sale: TSale): TMoney; override;
  end;

implementation

{ TPercentageDiscountPricingStrategy }

function TPercentageDiscountPricingStrategy.getTotal(sale: TSale):TMoney; //TMoney;
begin
  result := { sale.getPreDiscountTotal()* } percentage;
end;

end.
