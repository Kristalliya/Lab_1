unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UMonopolyGame, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Panel1:TPanel;
    Panel2:TPanel;
    Panel3:TPanel;
    Panel4:TPanel;
    Panel5:TPanel;
    Panel6:TPanel;
    Panel7:TPanel;
    Panel8:TPanel;
    Panel9:TPanel;
    Panel10:TPanel;
    Panel11:TPanel;
    Panel12:TPanel;
    Panel13:TPanel;
    Panel14:TPanel;
    Panel15:TPanel;
    Panel16:TPanel;
    Panel17:TPanel;
    Panel18:TPanel;
    Panel19:TPanel;
    Panel20:TPanel;
    Panel21:TPanel;
    Panel22:TPanel;
    Panel23:TPanel;
    Panel24:TPanel;
    Panel25:TPanel;
    Panel26:TPanel;
    Panel27:TPanel;
    Panel28:TPanel;
    Panel29:TPanel;
    Panel30:TPanel;
    Panel31:TPanel;
    Panel32:TPanel;
    Panel33:TPanel;
    Panel34:TPanel;
    Panel35:TPanel;
    Panel36:TPanel;
    Panel37:TPanel;
    Panel38:TPanel;
    Panel39:TPanel;
    Panel40:TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    MonopolyGame:TMonopolyGame;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;typ:string;
  //namestring:TPanel;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  MonopolyGame.playRound;
  //MonopolyGame.playGame;
  typ:=MonopolyGame.getPlayers.First.GetLocation.getName;
  Label1.Caption := MonopolyGame.getPlayers.First.getName + ' находится на ' + MonopolyGame.getPlayers.First.GetLocation.getName;
  Label2.Caption := MonopolyGame.getPlayers.Last.getName + ' находится на ' + MonopolyGame.getPlayers.Last.GetLocation.getName;
  //Panel[MonopolyGame.getPlayers.First.GetLocation.getName].Caption:=MonopolyGame.getPlayers.First.getName;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  MonopolyGame:=TMonopolyGame.Create;
end;

end.
