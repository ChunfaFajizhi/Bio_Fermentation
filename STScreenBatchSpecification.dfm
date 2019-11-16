object STScreenBatch: TSTScreenBatch
  Left = 249
  Top = 172
  BorderStyle = bsToolWindow
  Caption = #33740#31181#31579#36873#25209#27425
  ClientHeight = 531
  ClientWidth = 703
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 703
    Height = 41
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 10
      Width = 56
      Height = 20
      Caption = #33740#31181#21495'  '
      Color = clScrollBar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 112
      Top = 8
      Width = 145
      Height = 21
      KeyField = 'BATCH_NO'
      ListField = 'SCREENED_STRAIN_NO'
      ListSource = StrainCultureDM.DataSourceBatchTime
      TabOrder = 0
      OnCloseUp = DBLookupComboBox1CloseUp
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 703
    Height = 168
    Align = alTop
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 0
      Top = 40
      Width = 320
      Height = 120
      DataSource = StrainCultureDM.DataSourceScreenBatch
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'BOTTLE_NO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'B1A'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'B1'
          Visible = True
        end>
    end
    object DBNavigator1: TDBNavigator
      Left = 8
      Top = 8
      Width = 312
      Height = 25
      DataSource = StrainCultureDM.DataSourceScreenBatch
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 1
    end
    object DBImage1: TDBImage
      Left = 336
      Top = 8
      Width = 225
      Height = 153
      TabOrder = 2
    end
    object DBMemo1: TDBMemo
      Left = 568
      Top = 8
      Width = 129
      Height = 153
      TabOrder = 3
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 209
    Width = 703
    Height = 280
    Align = alTop
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
    object DBChart1: TDBChart
      Left = 8
      Top = 0
      Width = 329
      Height = 273
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      Title.Text.Strings = (
        #33740#31181#31579#36873#32047#31215#20998#24067#26354#32447)
      TabOrder = 0
      object Series1: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        DataSource = StrainCultureDM.IBQueryScreenBatch
        SeriesColor = clRed
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = False
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1
        YValues.Order = loNone
        YValues.ValueSource = 'B1'
      end
    end
  end
end
