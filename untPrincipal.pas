unit untPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,

  //Uses AMQP
  AMQP.Connection,
  AMQP.Interfaces,
  AMQP.Message,
  AMQP.StreamHelper;

type
  TfrmPrincipal = class(TForm)
    btnConDesc: TButton;
    txtHost: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    txtPort: TEdit;
    txtUsername: TEdit;
    txtPassword: TEdit;
    Label5: TLabel;
    txtApplicationID: TEdit;
    tmrStatus: TTimer;
    lbStatus: TLabel;
    Label6: TLabel;
    pnlQueue1: TPanel;
    Splitter1: TSplitter;
    txtNameQueue1: TEdit;
    Label7: TLabel;
    mmQueue1: TMemo;
    txtSend1: TEdit;
    btnSendQueue1: TButton;
    Panel1: TPanel;
    Label8: TLabel;
    txtNameQueue2: TEdit;
    mmQueue2: TMemo;
    txtSend2: TEdit;
    btnSendQueue2: TButton;
    procedure btnConDescClick(Sender: TObject);
    procedure tmrStatusTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSendQueue1Click(Sender: TObject);
    procedure btnSendQueue2Click(Sender: TObject);
  private
    { Private declarations }
    AMQP   : TAMQPConnection;
    Channel: IAMQPChannel;

    Procedure AMQPEvent( Sender: TObject; SendRecv: TSendRecv; AStrings: TStrings );
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnConDescClick(Sender: TObject);
begin
  try
    AMQP.HeartbeatSecs := 30;
    AMQP.Timeout       := 5000;
    AMQP.Host          := txtHost.Text;
    AMQP.Port          := StrToIntDef(txtPort.Text, 5671);
    AMQP.VirtualHost   := '/';
    AMQP.Username      := txtUsername.Text;
    AMQP.Password      := txtPassword.Text;
    AMQP.ApplicationID := txtApplicationID.Text;
    AMQP.Connect;

    Channel := AMQP.OpenChannel;

    Channel.QueueDeclare( txtNameQueue1.Text, []);
    Channel.QueueDeclare( txtNameQueue2.Text, []);
  Except
  on E: Exception do
    begin
      ShowMessage('Erro: ' + E.Message );
    end;
  end;
end;

procedure TfrmPrincipal.btnSendQueue1Click(Sender: TObject);
begin
  if Channel = nil then
    raise Exception.Create('Channel not open');

  Channel.BasicPublish( '', txtNameQueue1.Text, txtNameQueue1.Text +': '+txtSend1.Text );
end;

procedure TfrmPrincipal.btnSendQueue2Click(Sender: TObject);
begin
  if Channel = nil then
    raise Exception.Create('Channel not open');

  Channel.BasicPublish( '', txtNameQueue2.Text, txtNameQueue2.Text +': '+txtSend2.Text );
end;

procedure TfrmPrincipal.AMQPEvent(Sender: TObject; SendRecv: TSendRecv; AStrings: TStrings);
begin
  Try
    case SendRecv of
      srSend    : ShowMessage('Send: ' + AStrings.ToString );
      srReceive : ShowMessage('Receive: ' + AStrings.ToString );
    end;
  Finally
  End;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  AMQP := TAMQPConnection.Create;

  tmrStatus.Enabled := True;
end;

procedure TfrmPrincipal.tmrStatusTimer(Sender: TObject);
var
  Msg: TAMQPMessage;
begin
  if AMQP.IsOpen then
  begin
    lbStatus.Font.Color := clGreen;
    lbStatus.Caption    := 'Conexão: Open';
    btnConDesc.Caption  := 'Desconnect';

    if Channel = nil then
      Exit;

    Msg := Channel.BasicGet( txtNameQueue1.text );
    Try
      if Msg <> nil then
      Begin
        mmQueue2.Lines.Add( 'Message: ' + Msg.Body.AsString[ TEncoding.ASCII ] );
        Msg.Ack;
      End
    Finally
      Msg.Free;
    End;

    Msg := Channel.BasicGet( txtNameQueue2.text );
    Try
      if Msg <> nil then
      Begin
        mmQueue1.Lines.Add( 'Message: ' + Msg.Body.AsString[ TEncoding.ASCII ] );
        Msg.Ack;
      End
    Finally
      Msg.Free;
    End;
  end
  else
  begin
    lbStatus.Font.Color := clRed;
    lbStatus.Caption    := 'Conexão: Close' ;
    btnConDesc.Caption  := 'Connect';

    btnConDescClick(nil);
  end;
end;

end.
