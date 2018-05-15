unit UGreatNorthernAccountingAdapter;

interface

uses UIAccountingAdapter, USale, UPayment;

type
  TGreatNorthernAccountingAdapter = class(TIAccountingAdapter)
  public
    procedure postReceivable(CreditPayment: TPayment); override;
    procedure postSale(Sale: TSale); override;
  end;

implementation

end.
