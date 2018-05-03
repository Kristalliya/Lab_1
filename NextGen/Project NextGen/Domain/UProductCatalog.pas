unit UProductCatalog;

interface

uses Money, ItemID, UProductDescription, SysUtils, Generics.Collections,
  Generics.Defaults;

type
  IProductCatalog = class
    procedure ProductCatalog;virtual;abstract;
    function getProductDescription(id: TItemID): TProductDescription;virtual;abstract;
  end;

  TProductCatalog = class(IProductCatalog)
  private
    descriptions: Tdictionary<TItemID, TProductDescription>;
  published
    constructor create;
  public
    procedure ProductCatalog;override;
    function getProductDescription(id: TItemID): TProductDescription;override;
  end;

implementation

constructor TProductCatalog.create;
begin
  descriptions:=Tdictionary<TItemID,TProductDescription>.create;
  ProductCatalog;
end;

function TProductCatalog.getProductDescription(id: TItemID)
  : TProductDescription;
begin
  result := descriptions.items[id];
end;

procedure TProductCatalog.ProductCatalog;
var
  id1, id2: TItemID;
  price: TMoney;
  desc:TProductDescription;
begin
  id1 := 100;
  id2 := 200;
  price := 3;
  desc:=TProductDescription.create;
  desc.ProductDescription(id1, price, 'товар 1');
  descriptions.add(id1,desc);
  desc.ProductDescription(id2, price, 'товар 2');
  descriptions.add(id2,desc);
end;

end.
