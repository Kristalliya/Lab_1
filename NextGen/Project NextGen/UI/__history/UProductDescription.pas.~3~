unit UProductDescription;

interface

uses ItemID, Money;

type
  TProductDescription = class
  private
    id: TItemID;
    price: Tmoney;
    description: String;
  public
    procedure ProductDescription(id: TItemID; price: Tmoney;
      description: string);
    function getItemID: TItemID;
    function getPrice: Tmoney;
    function getDescription: string;
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
