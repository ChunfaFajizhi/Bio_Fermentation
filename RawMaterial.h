//---------------------------------------------------------------------------

#ifndef RawMaterialH
#define RawMaterialH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <DBCtrls.hpp>
#include <DBGrids.hpp>
#include <ExtCtrls.hpp>
#include <Grids.hpp>
//---------------------------------------------------------------------------
class TRawMaterialFrm : public TForm
{
__published:	// IDE-managed Components
        TPanel *Panel1;
        TDBNavigator *DBNavigator1;
        TBevel *Bevel1;
        TButton *RMEditBtn;
        TPanel *Panel2;
        TDBGrid *DBGrid1;
        TPanel *Panel3;
        TButton *RMQueryBtn;
        TButton *RMClsBtn;
        void __fastcall RMClsBtnClick(TObject *Sender);
        void __fastcall FormCreate(TObject *Sender);
        void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
private:	// User declarations
public:		// User declarations
        __fastcall TRawMaterialFrm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TRawMaterialFrm *RawMaterialFrm;
//---------------------------------------------------------------------------
#endif
