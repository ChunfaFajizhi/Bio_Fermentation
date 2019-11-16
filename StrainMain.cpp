//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "StrainMain.h"
#include "RawMaterial.h"
#include "STCultureDM.h"
#include "STScreenBatchSpecification.h"
#include "hplc.h"

//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TStrainMainfrm *StrainMainfrm;
//---------------------------------------------------------------------------
__fastcall TStrainMainfrm::TStrainMainfrm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TStrainMainfrm::FormCreate(TObject *Sender)
{

   Left = 10;
   Top = 10;
}
//---------------------------------------------------------------------------

void __fastcall TStrainMainfrm::MainMenuRawMaterialClick(TObject *Sender)
{
 StrainCultureDM->IBTableRawMaterial->Active=True;
 RawMaterialFrm->ShowModal();       
}
//---------------------------------------------------------------------------

void __fastcall TStrainMainfrm::SpeedButton1Click(TObject *Sender)
{String password;
 if(Edit2->Text=="masterkey")
 {
 StrainCultureDM->IBDataBatchspecification->Params->Values["password"]=Edit2->Text;
 ShowMessage("已连入数据库");
 }
 else
 ShowMessage("请重新输入密码");
}
//---------------------------------------------------------------------------

void __fastcall TStrainMainfrm::MainMenuExitClick(TObject *Sender)
{
Close();        
}
//---------------------------------------------------------------------------

void __fastcall TStrainMainfrm::MainMenuSBatchBtnClick(TObject *Sender)
{
  StrainCultureDM->IBTablesScreenBatch->Active=True;
   StrainCultureDM->IBTableBatchTime->Active=True;
 StrainCultureDM->IBQueryScreenBatch->Active=True;
 STScreenBatch->ShowModal();       
}
//---------------------------------------------------------------------------


void __fastcall TStrainMainfrm::hplcClick(TObject *Sender)
{
HplcForm->ShowModal();
}
//---------------------------------------------------------------------------



