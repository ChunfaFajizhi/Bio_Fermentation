//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "STScreenBatchSpecification.h"
#include "STCultureDM.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TSTScreenBatch *STScreenBatch;
//---------------------------------------------------------------------------
__fastcall TSTScreenBatch::TSTScreenBatch(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TSTScreenBatch::FormCreate(TObject *Sender)
{
Left=30;
Top=80;        
}
//---------------------------------------------------------------------------







void __fastcall TSTScreenBatch::DBLookupComboBox1CloseUp(TObject *Sender)
{
StrainCultureDM->IBQueryScreenBatch->SQL->Clear();
StrainCultureDM->IBQueryScreenBatch->SQL->Add("SELECT B1 FROM SCREEN_BATCH WHERE BATCH_NO=");
StrainCultureDM->IBQueryScreenBatch->SQL->Add("'"+DBLookupComboBox1->Text+"'");
StrainCultureDM->IBQueryScreenBatch->Open();
}
//---------------------------------------------------------------------------

