//---------------------------------------------------------------------------

#ifndef hplcwindowSH
#define hplcwindowSH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <Chart.hpp>
#include <ExtCtrls.hpp>
#include <Series.hpp>
#include <TeEngine.hpp>
#include <TeeProcs.hpp>
//---------------------------------------------------------------------------
class THplcForm : public TForm
{
__published:	// IDE-managed Components
        TPanel *Panel1;
        TChart *Chart1;
        TLineSeries *Series1;
        TLabel *Label1;
        TEdit *Edit1;
        TLabel *Label6;
        TEdit *Edit2;
        TLabel *Label5;
        TLabel *Label4;
        TLabel *Label3;
        TLabel *Label2;
        TButton *Button1;
        TButton *Button2;
        TButton *Button3;
        void __fastcall Button1Click(TObject *Sender);
        void __fastcall Button2Click(TObject *Sender);
        void __fastcall Button3Click(TObject *Sender);
        void __fastcall FormCreate(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall THplcForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE THplcForm *HplcForm;
//---------------------------------------------------------------------------
#endif
