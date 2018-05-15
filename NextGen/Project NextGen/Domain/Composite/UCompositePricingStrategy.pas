unit UCompositePricingStrategy;

interface

uses UISalePricingStrategy, Money, USale;

type
  TCompositePricingStrategy = class(TISalePricingStrategy)
  public
    function add(sale: TSale): TMoney; virtual; abstract;
  end;

implementation

end.
