program libmicro;

{$MODE DELPHI}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Horse,
  SysUtils,
  Classes;

procedure GetPing(Req: THorseRequest; Res: THorseResponse);
begin
  Res.Send('Ping');
end;

begin
  {$IF DEFINED(HORSE_MICROHTTP)}
  WriteLn('Horse MicroHTTP');
  {$ELSE}
  WriteLn('Horse');
  {$ENDIF}

  THorse.Get('/ping', GetPing);
  THorse.Listen(9000);
end.
