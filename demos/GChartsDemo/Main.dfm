object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 711
  ClientWidth = 1013
  Caption = 'MainForm'
  OnShow = UniFormShow
  BorderStyle = bsNone
  OldCreateOrder = False
  BorderIcons = []
  MonitoredKeys.Keys = <>
  Movable = False
  PageMode = True
  AlignmentControl = uniAlignmentClient
  Layout = 'vbox'
  OnCreate = UniFormCreate
  OnDestroy = UniFormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object UniPanel2: TUniPanel
    Left = 36
    Top = 8
    Width = 581
    Height = 49
    Hint = ''
    TabOrder = 0
    BorderStyle = ubsNone
    Caption = ''
    Color = 15233596
    Layout = 'hbox'
    LayoutAttribs.Align = 'middle'
    LayoutConfig.Width = '100%'
    object UniLabel1: TUniLabel
      Left = 16
      Top = 16
      Width = 67
      Height = 23
      Hint = ''
      TextConversion = txtHTML
      Caption = 'Google'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = 15658734
      Font.Height = -19
      Font.Style = [fsBold]
      TabOrder = 1
      LayoutConfig.Margin = '0 0 0 10'
    end
    object UniLabel2: TUniLabel
      Left = 89
      Top = 16
      Width = 53
      Height = 23
      Hint = ''
      TextConversion = txtHTML
      Caption = 'Charts'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = 14408667
      Font.Height = -19
      TabOrder = 2
      LayoutConfig.Margin = '0 0 0 10'
    end
    object UniLabel3: TUniLabel
      Left = 157
      Top = 16
      Width = 141
      Height = 23
      Hint = ''
      TextConversion = txtHTML
      Caption = #183' uniGUI Demo'
      ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = 15658734
      Font.Height = -19
      Font.Style = [fsBold]
      TabOrder = 3
      LayoutConfig.Margin = '0 0 0 10'
    end
  end
  object panCenter: TUniPanel
    Left = 36
    Top = 80
    Width = 749
    Height = 433
    Hint = ''
    TabOrder = 1
    BorderStyle = ubsNone
    Caption = ''
    Layout = 'border'
    LayoutConfig.Flex = 1
    LayoutConfig.Width = '100%'
    object UniPanel1: TUniPanel
      Left = 32
      Top = 35
      Width = 209
      Height = 358
      Hint = ''
      TabOrder = 1
      BorderStyle = ubsNone
      Title = 'Men'#250
      Caption = ''
      Color = clWindow
      Layout = 'fit'
      LayoutConfig.Split = True
      LayoutConfig.Region = 'west'
      object TreeView: TUniTreeView
        Left = 32
        Top = 40
        Width = 141
        Height = 294
        Hint = ''
        Items.FontData = {0100000000}
        AutoExpand = True
        Font.Charset = ANSI_CHARSET
        Font.Color = 6710886
        Font.Height = -15
        Font.Name = 'Calibri'
        ParentFont = False
        TabOrder = 1
        ScreenMask.ShowMessage = False
        Color = clWindow
        BorderStyle = ubsNone
        LayoutConfig.Padding = '6 2 0 5'
        UseArrows = True
        OnClick = TreeViewClick
      end
    end
    object panFrame: TUniPanel
      Left = 288
      Top = 59
      Width = 217
      Height = 310
      Hint = ''
      TabOrder = 2
      BorderStyle = ubsNone
      Caption = ''
      Color = 15592168
      Layout = 'fit'
      LayoutConfig.Region = 'center'
    end
  end
end
