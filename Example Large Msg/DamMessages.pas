unit DamMessages;

{Auto-generated by Dam - 14/02/2019 22:37:36}

interface

uses DamUnit;

procedure MsgInfo(const Msg: String; const Params: TDamParams = nil);
procedure MsgWarn(const Msg: String; const Params: TDamParams = nil);
procedure MsgError(const Msg: String; const Params: TDamParams = nil);
function MsgQuest(const Msg: String; const Params: TDamParams = nil): Boolean;
procedure MsgRaise(const Msg: String; const Params: TDamParams = nil);
function CaptureErrorMsg: String;
procedure ShowErrorMsg;

function QuestionSaveFile: TDamMsgRes;
function QuestionConfirmValues(Params: TDamParams): Boolean;

implementation

uses Unit1;

procedure MsgInfo(const Msg: String; const Params: TDamParams);
begin
  DamUnit.MsgInfo(Msg, Params);
end;

procedure MsgWarn(const Msg: String; const Params: TDamParams);
begin
  DamUnit.MsgWarn(Msg, Params);
end;

procedure MsgError(const Msg: String; const Params: TDamParams);
begin
  DamUnit.MsgError(Msg, Params);
end;

function MsgQuest(const Msg: String; const Params: TDamParams): Boolean;
begin
  Result := DamUnit.MsgQuest(Msg, Params);
end;

procedure MsgRaise(const Msg: String; const Params: TDamParams);
begin
  DamUnit.MsgRaise(Msg, Params);
end;

function CaptureErrorMsg: String;
begin
  Result := DamUnit.CaptureErrorMsg;
end;

procedure ShowErrorMsg;
begin
  DamUnit.ShowErrorMsg;
end;

//-- Messages methods of TDamMsg objects

function QuestionSaveFile: TDamMsgRes;
begin
  Result := Form1._QuestionSaveFile.Run;
end;

function QuestionConfirmValues(Params: TDamParams): Boolean;
begin
  Result := Form1._QuestionConfirmValues.RunAsBool(Params);
end;

end.
