object StrainCultureDM: TStrainCultureDM
  OldCreateOrder = False
  Left = 457
  Top = 195
  Height = 347
  Width = 483
  object IBDataBatchspecification: TIBDatabase
    Connected = True
    DatabaseName = 'D:\'#24494#29983#29289#22521#20859#25968#25454#24211'\AV_BIOTECHNOLOGY.GDB'
    Params.Strings = (
      'user_name=SYSDBA'
      ''
      ''
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 288
    Top = 24
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDataBatchspecification
    AutoStopAction = saNone
    Left = 400
    Top = 24
  end
  object IBTableRawMaterial: TIBTable
    Database = IBDataBatchspecification
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'MATERIAL_NO'
        DataType = ftInteger
      end
      item
        Name = 'MATERIAL_IN_TIME'
        Attributes = [faRequired]
        DataType = ftDateTime
      end
      item
        Name = 'MATERIAL_NAME'
        Attributes = [faRequired]
        DataType = ftString
        Size = 25
      end
      item
        Name = 'MA_BATCH_NO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 15
      end
      item
        Name = 'SPECIFICATION'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'UNIT'
        DataType = ftString
        Size = 6
      end
      item
        Name = 'UNIT_PRICE'
        Attributes = [faRequired]
        DataType = ftBCD
        Precision = 9
        Size = 2
      end
      item
        Name = 'QAUNTITY'
        DataType = ftInteger
      end
      item
        Name = 'TOTAL_PRICE'
        Attributes = [faReadonly]
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'MATERIAL_PRODUCER'
        Attributes = [faFixed]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'VALIDITY'
        Attributes = [faRequired]
        DataType = ftDateTime
      end
      item
        Name = 'MATERIAL_TAKER'
        DataType = ftString
        Size = 15
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY83'
        Fields = 'MA_BATCH_NO'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'RAWMATERIAL'
    Left = 48
    Top = 24
    object IBTableRawMaterialMATERIAL_NO: TIntegerField
      DisplayLabel = #21407#26448#26009#32534#21495
      FieldName = 'MATERIAL_NO'
    end
    object IBTableRawMaterialMATERIAL_IN_TIME: TDateTimeField
      DisplayLabel = #36827#26009#26102#38388
      FieldName = 'MATERIAL_IN_TIME'
      Required = True
    end
    object IBTableRawMaterialMATERIAL_NAME: TIBStringField
      DisplayLabel = #21407#26448#26009#21517#31216
      FieldName = 'MATERIAL_NAME'
      Required = True
      Size = 25
    end
    object IBTableRawMaterialMA_BATCH_NO: TIBStringField
      DisplayLabel = #21407#26448#26009#25209#21495
      FieldName = 'MA_BATCH_NO'
      Required = True
      Size = 15
    end
    object IBTableRawMaterialSPECIFICATION: TIBStringField
      DisplayLabel = #35268#26684
      FieldName = 'SPECIFICATION'
      Size = 15
    end
    object IBTableRawMaterialUNIT: TIBStringField
      DisplayLabel = #21333#20301
      FieldName = 'UNIT'
      Size = 6
    end
    object IBTableRawMaterialUNIT_PRICE: TIBBCDField
      DisplayLabel = #21333#20215
      FieldName = 'UNIT_PRICE'
      Required = True
      Precision = 9
      Size = 2
    end
    object IBTableRawMaterialQAUNTITY: TIntegerField
      DisplayLabel = #25968#37327
      FieldName = 'QAUNTITY'
    end
    object IBTableRawMaterialTOTAL_PRICE: TIBBCDField
      DisplayLabel = #24635#20215
      FieldKind = fkInternalCalc
      FieldName = 'TOTAL_PRICE'
      ReadOnly = True
      Precision = 18
      Size = 2
    end
    object IBTableRawMaterialMATERIAL_PRODUCER: TIBStringField
      DisplayLabel = #29983#20135#21830
      FieldName = 'MATERIAL_PRODUCER'
      FixedChar = True
      Size = 30
    end
    object IBTableRawMaterialVALIDITY: TDateTimeField
      DisplayLabel = #26377#25928#26399
      FieldName = 'VALIDITY'
      Required = True
    end
    object IBTableRawMaterialMATERIAL_TAKER: TIBStringField
      DisplayLabel = #39046#26009#20154
      FieldName = 'MATERIAL_TAKER'
      Size = 15
    end
  end
  object DataSourceRawMaterial: TDataSource
    DataSet = IBTableRawMaterial
    Left = 152
    Top = 24
  end
  object DecisionSource1: TDecisionSource
    ControlType = xtCheck
    SparseRows = False
    SparseCols = False
    Left = 168
    Top = 264
    DimensionCount = 2
    SummaryCount = 9
    CurrentSummary = 7
    SparseRows = False
    SparseCols = False
    DimensionInfo = (
      2
      0
      1
      0
      0
      1
      -1
      2
      0
      0)
  end
  object IBTablesScreenBatch: TIBTable
    Database = IBDataBatchspecification
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'BATCH_NO'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'BOTTLE_NO'
        DataType = ftSmallint
      end
      item
        Name = 'B1A'
        DataType = ftFloat
      end
      item
        Name = 'B1'
        DataType = ftFloat
      end>
    IndexFieldNames = 'BATCH_NO'
    MasterFields = 'BATCH_NO'
    MasterSource = DataSourceBatchTime
    StoreDefs = True
    TableName = 'SCREEN_BATCH'
    Left = 48
    Top = 80
  end
  object DataSourceScreenBatch: TDataSource
    DataSet = IBTablesScreenBatch
    Left = 160
    Top = 80
  end
  object IBQueryScreenBatch: TIBQuery
    Database = IBDataBatchspecification
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select B1 from SCREEN_BATCH'
      'where BATCH_NO='#39'2001-01'#39
      'order by B1')
    Left = 48
    Top = 192
  end
  object IBTableBatchTime: TIBTable
    Database = IBDataBatchspecification
    Transaction = IBTransaction1
    AfterClose = IBTableBatchTimeAfterClose
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'BATCH_NO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 12
      end
      item
        Name = 'SCREEN_DATE'
        DataType = ftDateTime
      end
      item
        Name = 'SCREENED_STRAIN_NO'
        DataType = ftString
        Size = 12
      end>
    IndexDefs = <
      item
        Name = 'RDB$PRIMARY2'
        Fields = 'BATCH_NO'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'BATCHTIME'
    Left = 48
    Top = 136
  end
  object DataSourceBatchTime: TDataSource
    DataSet = IBTableBatchTime
    Left = 160
    Top = 136
  end
  object DSQueryScreenBatch: TDataSource
    DataSet = IBQueryScreenBatch
    Left = 160
    Top = 192
  end
end
