//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
//---------------------------------------------------------------------------
USEFORM("StrainMain.cpp", StrainMainfrm);
USEFORM("STCultureDM.cpp", StrainCultureDM); /* TDataModule: File Type */
USEFORM("RawMaterial.cpp", RawMaterialFrm);
USEFORM("STScreenBatchSpecification.cpp", STScreenBatch);
USEFORM("hplcwindowS.cpp", HplcForm);
//---------------------------------------------------------------------------
WINAPI WinMain(HINSTANCE, HINSTANCE, LPSTR, int)
{
        try
        {
                 Application->Initialize();
                 Application->Title = "微生物培养数据库";
                 Application->CreateForm(__classid(TStrainMainfrm), &StrainMainfrm);
                 Application->CreateForm(__classid(TStrainCultureDM), &StrainCultureDM);
                 Application->CreateForm(__classid(TRawMaterialFrm), &RawMaterialFrm);
                 Application->CreateForm(__classid(TSTScreenBatch), &STScreenBatch);
                 Application->CreateForm(__classid(THplcForm), &HplcForm);
                 Application->Run();
        }
        catch (Exception &exception)
        {
                 Application->ShowException(&exception);
        }
        catch (...)
        {
                 try
                 {
                         throw Exception("");
                 }
                 catch (Exception &exception)
                 {
                         Application->ShowException(&exception);
                 }
        }
        return 0;
}
//---------------------------------------------------------------------------
