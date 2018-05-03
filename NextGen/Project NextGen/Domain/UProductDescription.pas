unit UProductDescription;

interface

uses ItemID, Money;

type
  IProductDescription = class
    procedure ProductDescription(id: TItemID; price: Tmoney;
      description: string);virtual;abstract;
    function getItemID: TItemID;virtual;abstract;
    function getPrice: Tmoney;virtual;abstract;
    function getDescription: string;virtual;abstract;
  end;

  TProductDescription = class(IProductDescription)
  private
    id: TItemID;
    price: Tmoney;
    description: String;
  public
    procedure ProductDescription(id: TItemID; price: Tmoney;
      description: string);override;
    function getItemID: TItemID;override;
    function getPrice: Tmoney;override;
    function getDescription: string;override;
  end;

implementation

{ TProductDescription }

function TProductDescription.getDescription: string;
begin
  result := description;
end;

function TProductDescription.getItemID: TItemID;
begin
  result := id;
end;

function TProductDescription.getPrice: Tmoney;
begin
  result := price;
end;

procedure TProductDescription.ProductDescription(id: TItemID; price: Tmoney;
  description: string);
begin
  self.id := id;
  self.price := price;
  self.description := description;
end;

end.
