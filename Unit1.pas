unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form1: TForm1;
  SP, GES: integer;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
   SP:=StrToInt(Edit1.Text);
   
   if (SP<11)
      then Label1.Caption:='Danke'
      else if(SP<51)
              then Label1.Caption:='Vielen Dank'
              else Label1.Caption:='Herzlichen lieben Dank';
   GES:=GES+SP;
   Label4.Caption:=IntToStr(GES);

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  GES:=0;
end;

end.
