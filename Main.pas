unit Main;
{$WARN UNIT_PLATFORM OFF}
{$WARN SYMBOL_PLATFORM OFF}
{$WARN SYMBOL_DEPRECATED OFF}
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.StrUtils, IniFilesDX, System.IOUtils, System.Types,
  Vcl.Filectrl, Vcl.StdCtrls;

type
  TfrmMain = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private 宣言 }
  public
    { Public 宣言 }
  end;

var
  frmMain: TfrmMain;

  function SetSuspendState(hibernate, forcecritical, disablewakeevent: boolean): boolean; stdcall; external 'powrprof.dll' name 'SetSuspendState';

implementation

{$R *.dfm}

procedure TfrmMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Release;
  frmMain := nil;   //フォーム名に変更する
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  if FindWindowW(nil, 'EpgDataCap_Bon') <> 0 then
    ShowMessage('録画中です')
  else
  	SetSuspendState(True, False, False);
  Close;
end;

end.

