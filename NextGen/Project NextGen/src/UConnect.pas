unit UConnect;

interface

uses Data.DB, Data.Win.ADODB;

type
  TConnection = class
  private
    ADOConnection: TADOConnection;
    function GetAdoConnection:TADOConnection;
    procedure SetAdoConnection;
  end;

implementation

{ TConnection }

function TConnection.GetAdoConnection: TADOConnection;
begin
  result:=ADOConnection;
end;

procedure TConnection.SetAdoConnection;
begin
  ADOConnection:=TADOConnection.Create(nil);
  ADOConnection.ConnectionString :=
    'Provider=MSDASQL.1;Password=1234;Persist Security Info=True;User ID=User;Extended Properties="Driver=MySQL ODBC 5.3 ANSI Driver;SERVER=localhost;UID=User;PWD=1234;DATABASE=shop;PORT=3306;COLUMN_SIZE_S32=1";Initial Catalog=shop';
  ADOConnection.LoginPrompt := false;
  ADOConnection.Connected := true;
end;

end.
