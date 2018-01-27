object frmMain: TfrmMain
  Left = 320
  Top = 120
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'HiBin'
  ClientHeight = 92
  ClientWidth = 513
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
  DesignSize = (
    513
    92)
  PixelsPerInch = 96
  TextHeight = 18
  object Button1: TButton
    Left = 219
    Top = 61
    Width = 75
    Height = 25
    Anchors = [akBottom]
    Caption = 'OK'
    Default = True
    TabOrder = 0
    OnClick = Button1Click
    ExplicitTop = 115
  end
  object lvwList: TListView
    Left = 0
    Top = 0
    Width = 513
    Height = 55
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    Columns = <
      item
        Caption = #25918#36865#26178#38291
        Width = 200
      end
      item
        AutoSize = True
        Caption = #30058#32068#21517
      end>
    ColumnClick = False
    ReadOnly = True
    RowSelect = True
    ShowColumnHeaders = False
    SmallImages = PngImageList
    TabOrder = 1
    ViewStyle = vsReport
    ExplicitHeight = 109
  end
  object PngImageList: TPngImageList
    ColorDepth = cd32Bit
    Height = 14
    Width = 14
    PngImages = <
      item
        Background = clWindow
        Name = 'Recording'
        PngImage.Data = {
          89504E470D0A1A0A0000000D494844520000000E0000000E08060000001F482D
          D1000000097048597300000B1300000B1301009A9C18000002064944415478DA
          9D924F4814511CC77F6FDEECE8CEEC6CBAB2D9D6D6948488B7C830024125128A
          F0E0A14B74900DCA08D15BB72821AB437A0EC42008A28BE821A53F07A18B5274
          314244AD56D7DDB576DD6656F7CDCCEB37C3BCD83AFAE0CBFBF7FBBCDFEFBDF7
          259C73D84F231E4808F93B4785513A4A0DE665D44ED0BB5E90CF5481322A3638
          70B3BBB7E7C2B523C964B344A9B495CDAEBD7EF7FEC5C8E8C319DCCFA1EC6A50
          C285C627B75243572EF7DEAE374ED6121AF2CE06EE3AF03B9F61D373B313FDF7
          1E8CE0E226328E00F51B719ABA7EAEEB51535F4A267B0E109BFB85723C92AB0A
          6CCC4FC3E4CCABBB8FD3E531648A023CFACCD0A74E479B4F35B4B603E5D42BC5
          BF34EE828BC97FAE7C828F99CF4B57D74B1791591760CBEC89F842725B8D4468
          3D5055AB7E3F70F62C302BDBF0BDC1327B56736790F922C0D637467CF1F02F2D
          AC9A32485E7DE2A131B14B5CB0341B366266F9FC5AAE0D99250136BD3C56F7B6
          A5143D1E4550713850707CCEC5518512286A0C96F5D28FBE6F854E645604181B
          4D84EF77F3C840A24841AF3008B9CC4FE74832EC2821D88C729897CDE7C3696B
          0899BC00BD3F342613EAD30E4BEA3A6432A8716C3F232314B6B4107CD0616138
          6BF5676CFE1519566D809A3A4A8C3B3165F0AC0D97928C1FF46E9A9621BFA890
          B9F1021B5BADB8CB18B7FBBF73847B0E04AA0D2CB78B2A04B663FF586E3FED0F
          D79CFDE5DA21D6970000000049454E44AE426082}
      end>
    Left = 34
    Top = 8
    Bitmap = {}
  end
end
