object frmMain: TfrmMain
  Left = 320
  Top = 120
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'HiBin'
  ClientHeight = 148
  ClientWidth = 306
  Color = clBtnFace
  Font.Charset = SHIFTJIS_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = #12513#12452#12522#12458
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 18
  object Label1: TLabel
    Left = 123
    Top = 8
    Width = 60
    Height = 23
    Alignment = taCenter
    Caption = #9679#37682#30011#20013
    Font.Charset = SHIFTJIS_CHARSET
    Font.Color = clRed
    Font.Height = -15
    Font.Name = #12513#12452#12522#12458
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 115
    Top = 115
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    TabOrder = 0
    OnClick = Button1Click
  end
  object staInfo: TStaticText
    Left = 8
    Top = 37
    Width = 290
    Height = 72
    AutoSize = False
    BevelKind = bkSoft
    Caption = 'staInfo'
    TabOrder = 1
  end
end
