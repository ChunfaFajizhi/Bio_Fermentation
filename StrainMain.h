//---------------------------------------------------------------------------

#ifndef StrainMainH
#define StrainMainH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ComCtrls.hpp>
#include <ExtCtrls.hpp>
#include <Graphics.hpp>
#include <ToolWin.hpp>
#include <Buttons.hpp>
#include <Menus.hpp>
//---------------------------------------------------------------------------
class TStrainMainfrm : public TForm
{
__published:	// IDE-managed Components
        TControlBar *ControlBar1;
        TToolBar *ToolBar1;
        TToolButton *ToolButton1;
        TToolButton *ToolButton2;
        TToolButton *ToolButton3;
        TToolButton *ToolButton4;
        TToolButton *ToolButton5;
        TToolButton *ToolButton6;
        TToolButton *ToolButton7;
        TMainMenu *MainMenu1;
        TMenuItem *MainMenuFile;
        TMenuItem *MainMenuOpen;
        TMenuItem *MainMenuPrint;
        TMenuItem *MainMenuSTP;
        TMenuItem *MainMenuExit;
        TMenuItem *MainMenuTable;
        TMenuItem *MainMenuBrowse;
        TMenuItem *MainMenuTool;
        TMenuItem *MainMenuRawMaterial;
        TLabel *Label3;
        TLabel *Label4;
        TMenuItem *N1;
        TMenuItem *N2;
        TMenuItem *N3;
        TMenuItem *MainMenuSBatchBtn;
        TMenuItem *hplc;
        TLabel *Label1;
        TEdit *Edit1;
        TLabel *Label2;
        TEdit *Edit2;
        TSpeedButton *SpeedButton1;
        void __fastcall FormCreate(TObject *Sender);
        void __fastcall MainMenuRawMaterialClick(TObject *Sender);
        void __fastcall SpeedButton1Click(TObject *Sender);
        void __fastcall MainMenuExitClick(TObject *Sender);
        void __fastcall MainMenuSBatchBtnClick(TObject *Sender);
        void __fastcall hplcClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TStrainMainfrm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TStrainMainfrm *StrainMainfrm;
//---------------------------------------------------------------------------
#endif
