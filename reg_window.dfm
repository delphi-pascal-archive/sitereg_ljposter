object Form3: TForm3
  Left = 262
  Top = 354
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1055#1088#1086#1089#1084#1086#1090#1088
  ClientHeight = 509
  ClientWidth = 836
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    0000000080000080000000808000800000008000800080800000C0C0C0008080
    80000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00CCC0
    000CCCC0000000000CCCC7777CCCCCCC0000CCCC00000000CCCC7777CCCCCCCC
    C0000CCCCCCCCCCCCCC7777CCCCC0CCCCC0000CCCCCCCCCCCC7777CCCCC700CC
    C00CCCC0000000000CCCC77CCC77000C0000CCCC00000000CCCC7777C7770000
    00000CCCC000000CCCC777777777C000C00000CCCC0000CCCC77777C777CCC00
    CC00000CCCCCCCCCC77777CC77CCCCC0CCC000CCCCC00CCCCC777CCC7CCCCCCC
    CCCC0CCCCCCCCCCCCCC7CCCCCCCCCCCC0CCCCCCCCCCCCCCCCCCCCCC7CCC70CCC
    00CCCCCCCC0CC0CCCCCCCC77CC7700CC000CCCCCC000000CCCCCC777CC7700CC
    0000CCCC00000000CCCC7777CC7700CC0000C0CCC000000CCC7C7777CC7700CC
    0000C0CCC000000CCC7C7777CC7700CC0000CCCC00000000CCCC7777CC7700CC
    000CCCCCC000000CCCCCC777CC7700CC00CCCCCCCC0CC0CCCCCCCC77CC770CCC
    0CCCCCCCCCCCCCCCCCCCCCC7CCC7CCCCCCCC0CCCCCCCCCCCCCC7CCCCCCCCCCC0
    CCC000CCCCC00CCCCC777CCC7CCCCC00CC00000CCCCCCCCCC77777CC77CCC000
    C00000CCCC0000CCCC77777C777C000000000CCCC000000CCCC777777777000C
    0000CCCC00000000CCCC7777C77700CCC00CCCC0000000000CCCC77CCC770CCC
    CC0000CCCCCCCCCCCC7777CCCCC7CCCCC0000CCCCCCCCCCCCCC7777CCCCCCCCC
    0000CCCC00000000CCCC7777CCCCCCC0000CCCC0000000000CCCC7777CCC0000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000}
  OldCreateOrder = False
  PixelsPerInch = 120
  TextHeight = 16
  object Label4: TLabel
    Left = 8
    Top = 26
    Width = 113
    Height = 16
    BiDiMode = bdLeftToRight
    Caption = #1052#1072#1089#1096#1090#1072#1073' '#1086#1082#1085#1072':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 56
    Width = 836
    Height = 453
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 0
    object WebBrowser1: TWebBrowser
      Left = 1
      Top = 1
      Width = 834
      Height = 451
      Align = alClient
      TabOrder = 0
      OnDocumentComplete = WebBrowser1DocumentComplete
      ControlData = {
        4C000000F54400004A2500000000000000000000000000000000000000000000
        000000004C000000000000000000000001000000E0D057007335CF11AE690800
        2B2E126208000000000000004C0000000114020000000000C000000000000046
        8000000000000000000000000000000000000000000000000000000000000000
        00000000000000000100000000000000000000000000000000000000}
    end
  end
  object ComboBox1: TComboBox
    Left = 136
    Top = 16
    Width = 81
    Height = 24
    BiDiMode = bdLeftToRight
    ItemHeight = 16
    ParentBiDiMode = False
    TabOrder = 1
    Text = '100 %'
    OnChange = ComboBox1Change
    Items.Strings = (
      '500 %'
      '400 %'
      '300 %'
      '250 %'
      '200 %'
      '175 %'
      '150 %'
      '125 %'
      '110 %'
      '100 %'
      '90 %'
      '80 %'
      '70 %'
      '60 %'
      '50 %'
      '40 %'
      '30 %'
      '20 %')
  end
  object Button1: TButton
    Left = 688
    Top = 16
    Width = 137
    Height = 25
    Caption = '/ '#1047#1072#1082#1088#1099#1090#1100' '#1086#1082#1085#1086' /'
    TabOrder = 2
    OnClick = Button1Click
  end
end