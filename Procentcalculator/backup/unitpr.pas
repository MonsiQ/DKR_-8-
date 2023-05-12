unit unitPr;
{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ComCtrls,
  ExtCtrls, Math, Types;

type

  { TFont }

  TFont = class(TForm)
    Button1: TButton;
    ButtonRaschet: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    EditProcent: TEdit;
    EditMonth: TEdit;
    EditDepozit: TEdit;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    LabeProcent: TLabel;
    LabelMonth: TLabel;
    LabelDepozit: TLabel;
    LabelItog: TLabel;
    LabelProcentitog: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    MemoItog: TMemo;
    MemoProcentitog: TMemo;
    PageControl1: TPageControl;
    EaseProcent: TTabSheet;
    HardProcent: TTabSheet;
    procedure Button1Click(Sender: TObject);
    procedure ButtonRaschetClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure EditProcentChange(Sender: TObject);
    procedure EditMonthChange(Sender: TObject);
    procedure EditDepozitChange(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure LabelItogClick(Sender: TObject);
    procedure MemoItogChange(Sender: TObject);
    procedure MemoProcentitogChange(Sender: TObject);
    procedure HardProcentContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
  private

  public

  end;

var
  Font: TFont;
  a,b,c,i,d,f,g,s,e,otv:real;

implementation

{$R *.lfm}

{ TFont }

procedure TFont.LabelItogClick(Sender: TObject);
begin

end;

procedure TFont.MemoItogChange(Sender: TObject);
begin

end;

procedure TFont.MemoProcentitogChange(Sender: TObject);
begin


end;

procedure TFont.HardProcentContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin

end;

procedure TFont.EditProcentChange(Sender: TObject);
begin
  if not(EditProcent.text = '') then
  a:=strtofloat(EditProcent.text);
end;

procedure TFont.ButtonRaschetClick(Sender: TObject);
begin
  i:=(c*(a/12)*b)/100;
  i:=RoundTo(i,-2);
  MemoProcentitog.text:=floattostr(i);
  d:=i+c;
  d:=RoundTo(d,-2);
  MemoItog.text:=floattostr(d);
end;

procedure TFont.Button1Click(Sender: TObject);
begin
  e:= s * Power(1 + (f / 100 / 12), g);
  e:=RoundTo(e,-2);
  Memo2.text:=floattostr(e);
  otv:= e-s;
  otv:=RoundTo(otv,-2);
  Memo1.text:=floattostr(otv);
end;

procedure TFont.Edit1Change(Sender: TObject);
begin
  if not(Edit1.text = '') then
  f:=strtofloat(Edit1.text);
end;

procedure TFont.Edit2Change(Sender: TObject);
begin
  if not(Edit2.text = '') then
  g:=strtofloat(Edit2.text);
end;

procedure TFont.Edit3Change(Sender: TObject);
begin
  if not(Edit3.text = '') then
  s:=strtofloat(Edit3.text);
end;

procedure TFont.EditMonthChange(Sender: TObject);
begin
  if not(EditMonth.text = '') then
  b:=strtofloat(EditMonth.text);
end;

procedure TFont.EditDepozitChange(Sender: TObject);
begin
  if not(EditDepozit.text = '') then
  c:=strtofloat(EditDepozit.text);
end;

procedure TFont.Label1Click(Sender: TObject);
begin

end;



end.
