unit UPayment;

interface

uses
  Money;

type
  TPayment = class
  private
    amount: TMoney;
  public
    procedure Payment(cashTendered: TMoney);
    function getAmount: TMoney;
  end;

implementation

{ TPayment }

function TPayment.getAmount: TMoney;
begin
  result := amount;
end;

procedure TPayment.Payment(cashTendered: TMoney);
begin
  amount := cashTendered;
end;

end.
