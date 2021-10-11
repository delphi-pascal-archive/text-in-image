object Form1: TForm1
  Left = 243
  Top = 132
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Text in Image'
  ClientHeight = 250
  ClientWidth = 370
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 17
  object Image1: TImage
    Left = 8
    Top = 8
    Width = 353
    Height = 113
    Stretch = True
    Transparent = True
  end
  object Memo1: TMemo
    Left = 8
    Top = 128
    Width = 353
    Height = 113
    ScrollBars = ssVertical
    TabOrder = 0
    OnChange = Memo1Change
  end
end
