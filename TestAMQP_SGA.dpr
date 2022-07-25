program TestAMQP_SGA;

uses
  Vcl.Forms,
  untPrincipal in 'untPrincipal.pas' {frmPrincipal},
  AMQP.Arguments in 'AMQP_Source\AMQP.Arguments.pas',
  AMQP.Channel in 'AMQP_Source\AMQP.Channel.pas',
  AMQP.Classes in 'AMQP_Source\AMQP.Classes.pas',
  AMQP.Connection in 'AMQP_Source\AMQP.Connection.pas',
  AMQP.Frame in 'AMQP_Source\AMQP.Frame.pas',
  AMQP.Header in 'AMQP_Source\AMQP.Header.pas',
  AMQP.Helper in 'AMQP_Source\AMQP.Helper.pas',
  AMQP.IMessageProperties in 'AMQP_Source\AMQP.IMessageProperties.pas',
  AMQP.Interfaces in 'AMQP_Source\AMQP.Interfaces.pas',
  AMQP.Message in 'AMQP_Source\AMQP.Message.pas',
  AMQP.MessageProperties in 'AMQP_Source\AMQP.MessageProperties.pas',
  AMQP.Method in 'AMQP_Source\AMQP.Method.pas',
  AMQP.Payload in 'AMQP_Source\AMQP.Payload.pas',
  AMQP.Protocol in 'AMQP_Source\AMQP.Protocol.pas',
  AMQP.StreamHelper in 'AMQP_Source\AMQP.StreamHelper.pas',
  amqp.syncobjs in 'AMQP_Source\amqp.syncobjs.pas',
  AMQP.Types in 'AMQP_Source\AMQP.Types.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
