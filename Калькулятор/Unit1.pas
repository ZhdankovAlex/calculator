unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
     If (Edit1.Text <> '') And (Edit2.Text <> '') then
         Edit3.Text := FloatToStr(StrToFloat(Edit1.Text) + StrToFloat(Edit2.Text));
         Label2.Caption:='+';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
    If (Edit1.Text <> '') And (Edit2.Text <> '') then
        Edit3.Text := FloatToStr(StrToFloat(Edit1.Text) - StrToFloat(Edit2.Text));
        Label2.Caption:='-';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
    If (Edit1.Text <> '') And (Edit2.Text <> '') then
    Edit3.Text := FloatToStr(StrToFloat(Edit1.Text) * StrToFloat(Edit2.Text));
    Label2.Caption:='*';
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
    If (Edit1.Text <> '') And (Edit2.Text <> '') And(Edit2.Text<>'0') then
    Edit3.Text := FloatToStr(StrToFloat(Edit1.Text) / StrToFloat(Edit2.Text));
    if Edit2.Text='0' then
    begin
         Edit3.Text:='Error!';
         ShowMessage('������� �� 0 ����������');
    end;

    Label2.Caption:='/';
end;

procedure TForm1.Button5Click(Sender: TObject);
var m,z:integer;
    i,a,b:integer;
begin
    a:=StrToInt(Edit1.Text);
    b:=StrToInt(Edit2.Text);
    if ((a=0) or (b=0)) then
    begin
         Edit3.Text:='0';
         exit;
    end;
    if a<0 then a:=-a;
    if b<0 then b:=-b;
    if a<b then m:=a else m:=b;
    for i:=1 to m do if (a mod i=0) and (b mod i=0) then z:=i;
    Edit3.Text:=IntToStr(z);
    Label2.Caption:='NOD';
end;

end.
