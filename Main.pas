unit Main;
{$WARN UNIT_PLATFORM OFF}
{$WARN SYMBOL_PLATFORM OFF}
{$WARN SYMBOL_DEPRECATED OFF}
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.StrUtils, IniFilesDX, System.IOUtils, System.Types,
  Vcl.Filectrl, Vcl.StdCtrls, Vcl.ComCtrls, System.ImageList, Vcl.ImgList,
  PngImageList;

type
  TfrmMain = class(TForm)
    Button1: TButton;
    lvwList: TListView;
    PngImageList: TPngImageList;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private 宣言 }
    function _IsRecording: Boolean;
  public
    { Public 宣言 }
  end;

  function SetSuspendState(bHibernate, bForceCritical, bDisableWakeEvent: Boolean): Boolean; stdcall; external 'powrprof.dll' name 'SetSuspendState';

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses
  HideUtils,
  dp;

procedure TfrmMain.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Release;
  frmMain := nil;   //フォーム名に変更する
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  if (Not _IsRecording) and (Not IsDebugMode) then
  begin
  	SetSuspendState(True, False, False);
    Close;
  end;
end;

function TfrmMain._IsRecording: Boolean;
var
  item : TListItem;
  sl : TStringList;
  iDesk, iBon, iWnd : THandle;
  sText : String;
  iLen : Integer;
begin
  Result := False;
  iDesk := GetDesktopWindow;
  iBon := FindWindowExW(iDesk, 0, nil, 'EpgDataCap_Bon');
  while iBon <> 0 do
  begin
    Result := True;
    iWnd := FindWindowExW(iBon, 0, 'Edit', nil);
    while iWnd <> 0 do
    begin
      iLen := SendMessageW(iWnd, WM_GETTEXTLENGTH, 0, 0);
      SetLength(sText, iLen);
      SendMessageW(iWnd, WM_GETTEXT, iLen, lParam(PWideChar(sText)));
      if Pos('/', sText) > 0 then
      begin
        sl := TStringList.Create;
        try
          sl.Text := sText;
          item := lvwList.Items.Add;
          item.Caption := sl[0];
          item.SubItems.Add(sl[1]);
          item.ImageIndex := 0;
        finally
          sl.Free;
        end;
      end;
      iWnd := FindWindowExW(iBon, iWnd, 'Edit', nil);
    end;
    iBon := FindWindowExW(iDesk, iBon, nil, 'EpgDataCap_Bon');
  end;
end;

end.

