//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "STCultureDM.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TStrainCultureDM *StrainCultureDM;
//---------------------------------------------------------------------------
__fastcall TStrainCultureDM::TStrainCultureDM(TComponent* Owner)
        : TDataModule(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TStrainCultureDM::IBTableBatchTimeAfterClose(
      TDataSet *DataSet)
{
 StrainCultureDM->IBTablesScreenBatch->Active=False;
   StrainCultureDM->IBTableBatchTime->Active=False;
 StrainCultureDM->IBQueryScreenBatch->Active=False;
}
//---------------------------------------------------------------------------

