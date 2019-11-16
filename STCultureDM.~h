//---------------------------------------------------------------------------

#ifndef STCultureDMH
#define STCultureDMH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <DB.hpp>
#include <IBCustomDataSet.hpp>
#include <IBDatabase.hpp>
#include <IBTable.hpp>
#include <DBTables.hpp>
#include <MXDB.hpp>
#include <Mxstore.hpp>
#include <MXTABLES.hpp>
#include <IBQuery.hpp>
//---------------------------------------------------------------------------
class TStrainCultureDM : public TDataModule
{
__published:	// IDE-managed Components
        TIBDatabase *IBDataBatchspecification;
        TIBTransaction *IBTransaction1;
        TIBTable *IBTableRawMaterial;
        TDataSource *DataSourceRawMaterial;
        TIntegerField *IBTableRawMaterialMATERIAL_NO;
        TDateTimeField *IBTableRawMaterialMATERIAL_IN_TIME;
        TIBStringField *IBTableRawMaterialMATERIAL_NAME;
        TIBStringField *IBTableRawMaterialMA_BATCH_NO;
        TIBStringField *IBTableRawMaterialSPECIFICATION;
        TIBStringField *IBTableRawMaterialUNIT;
        TIBBCDField *IBTableRawMaterialUNIT_PRICE;
        TIntegerField *IBTableRawMaterialQAUNTITY;
        TIBBCDField *IBTableRawMaterialTOTAL_PRICE;
        TIBStringField *IBTableRawMaterialMATERIAL_PRODUCER;
        TDateTimeField *IBTableRawMaterialVALIDITY;
        TIBStringField *IBTableRawMaterialMATERIAL_TAKER;
        TDecisionSource *DecisionSource1;
        TIBTable *IBTablesScreenBatch;
        TDataSource *DataSourceScreenBatch;
        TIBQuery *IBQueryScreenBatch;
        TIBTable *IBTableBatchTime;
        TDataSource *DataSourceBatchTime;
        TDataSource *DSQueryScreenBatch;
        void __fastcall IBTableBatchTimeAfterClose(TDataSet *DataSet);
private:	// User declarations
public:		// User declarations
        __fastcall TStrainCultureDM(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TStrainCultureDM *StrainCultureDM;
//---------------------------------------------------------------------------
#endif
