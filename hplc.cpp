//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "hplc.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
THplcForm *HplcForm;
//---------------------------------------------------------------------------
__fastcall THplcForm::THplcForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------


void __fastcall THplcForm::Button1Click(TObject *Sender)
{
Edit1->Clear();
Edit2->Clear();
}
//---------------------------------------------------------------------------

void __fastcall THplcForm::Button2Click(TObject *Sender)
{ int day,hplc;
  Label3->Caption=Edit1->Text;
  day=StrToInt(Edit1->Text);
  hplc=-5.5749*day*day*day+100.8908*day*day-127.746*day+18.8944;

   if(day==0||day==1)
     Edit2->Text=IntToStr(0);
   else
    Edit2->Text=IntToStr(hplc);
}
//---------------------------------------------------------------------------
void __fastcall THplcForm::Button3Click(TObject *Sender)
{
  int hplc1;

 for(int day1=0;day1<=13;day1++)
  {if(day1==0||day1==1)
  hplc1=0;
  else
  hplc1=-5.5749*day1*day1*day1+100.8908*day1*day1-127.746*day1+18.8944;

   Series1->AddXY(day1,hplc1,clTeeColor);
  }
}
//---------------------------------------------------------------------------
