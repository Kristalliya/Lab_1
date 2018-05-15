unit UICreditAuthorizationServiceAdapter;

interface

uses UPayment;

type
  TICreditAuthorizationServiceAdapter = class
  public
    procedure requestApproval(CreditPayment: TPayment; TerminallD, MerchantID);
  end;

implementation

{ TICreditAuthorizationServiceAdapter }

procedure TICreditAuthorizationServiceAdapter.requestApproval
  (CreditPayment: TPayment; TerminallD, MerchantID);
begin
  //
end;

end.
