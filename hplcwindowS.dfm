object HplcForm: THplcForm
  Left = 479
  Top = 77
  Width = 503
  Height = 463
  Caption = #26412#31243#24207#20026#38463#32500#33740#32032#21457#37237#29983#20135#25928#20215#22686#38271#39044#27979#31243#24207'/'#33740#31181'192S/2002'#24180#19979#21322#24180
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
    Width = 495
    Height = 436
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 209
      Height = 13
      Caption = #35831#36755#20837#24050#21457#37237#30340#22825#25968'(0=<day<=12)?          '
    end
    object Label6: TLabel
      Left = 312
      Top = 44
      Width = 27
      Height = 13
      Caption = 'ug/ml'
    end
    object Label5: TLabel
      Left = 176
      Top = 44
      Width = 63
      Height = 13
      Caption = #25928#20215#32422#20026'     '
    end
    object Label4: TLabel
      Left = 144
      Top = 44
      Width = 12
      Height = 13
      Caption = #22825
    end
    object Label3: TLabel
      Left = 112
      Top = 44
      Width = 6
      Height = 13
      Caption = '?'
    end
    object Label2: TLabel
      Left = 8
      Top = 44
      Width = 81
      Height = 13
      Caption = #29616#22312#26159#21457#37237'       '
    end
    object Chart1: TChart
      Left = 0
      Top = 80
      Width = 473
      Height = 313
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      Title.Text.Strings = (
        #38463#32500#33740#32032#21457#37237#29983#20135#25928#20215#22686#38271#39044#27979#26354#32447)
      BottomAxis.Automatic = False
      BottomAxis.AutomaticMaximum = False
      BottomAxis.AutomaticMinimum = False
      BottomAxis.LabelStyle = talValue
      BottomAxis.Maximum = 14
      BottomAxis.Title.Caption = #26102#38388
      LeftAxis.Title.Caption = 'HPLC'
      Legend.Visible = False
      View3D = False
      TabOrder = 0
      object Series1: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = clRed
        Pointer.Brush.Color = clRed
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = True
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1
        YValues.Order = loNone
      end
    end
    object Edit1: TEdit
      Left = 256
      Top = 8
      Width = 49
      Height = 21
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 256
      Top = 36
      Width = 49
      Height = 21
      TabOrder = 2
    end
    object Button1: TButton
      Left = 384
      Top = 8
      Width = 75
      Height = 25
      Caption = #28165#38500
      TabOrder = 3
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 384
      Top = 32
      Width = 75
      Height = 25
      Caption = #39044#27979
      TabOrder = 4
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 392
      Top = 400
      Width = 75
      Height = 25
      Caption = #26354#32447
      TabOrder = 5
      OnClick = Button3Click
    end
  end
end
