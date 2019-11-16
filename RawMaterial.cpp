//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "RawMaterial.h"
#include "STCultureDM.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TRawMaterialFrm *RawMaterialFrm;
//---------------------------------------------------------------------------
__fastcall TRawMaterialFrm::TRawMaterialFrm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TRawMaterialFrm::RMClsBtnClick(TObject *Sender)
{
Close();        
}
//---------------------------------------------------------------------------
void __fastcall TRawMaterialFrm::FormCreate(TObject *Sender)
{
Left=20;
Top=70;        
}
//---------------------------------------------------------------------------

void __fastcall TRawMaterialFrm::FormClose(TObject *Sender,
      TCloseAction &Action)
{
StrainCultureDM->IBTableRawMaterial->Active=False;        
}
//---------------------------------------------------------------------------

