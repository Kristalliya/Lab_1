unit UPayment;

interface

uses
  Money;

type
  IPayment = class
    procedure Payment(cashTendered: TMoney);virtual;abstract;
    function getAmount: TMoney;virtual;abstract;
  end;

  TPayment = class(IPayment)
  private
    amount: TMoney;
  public
    procedure Payment(cashTendered: TMoney);override;
    function getAmount: TMoney;override;
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
