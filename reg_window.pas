unit reg_window;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, OleCtrls, SHDocVw, ExtCtrls, StdCtrls, Buttons;

type
  TForm3 = class(TForm)
    Panel1: TPanel;
    WebBrowser1: TWebBrowser;
    Label4: TLabel;
    ComboBox1: TComboBox;
    Button1: TButton;
    procedure ComboBox1Change(Sender: TObject);
    procedure WebBrowser1DocumentComplete(Sender: TObject;
      const pDisp: IDispatch; var URL: OleVariant);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.ComboBox1Change(Sender: TObject);
begin
 try
  // 20 %
  if ComboBox1.Text='20 %'
  then WebBrowser1.OleObject.Document.Body.Style.Zoom:=0.2;
  // 30 %
  if ComboBox1.Text='30 %'
  then WebBrowser1.OleObject.Document.Body.Style.Zoom:=0.3;
  // 40 %
  if ComboBox1.Text='40 %'
  then WebBrowser1.OleObject.Document.Body.Style.Zoom:=0.4;
  // 50 %
  if ComboBox1.Text='50 %'
  then WebBrowser1.OleObject.Document.Body.Style.Zoom:=0.5;
  // 60 %
  if ComboBox1.Text='60 %'
  then WebBrowser1.OleObject.Document.Body.Style.Zoom:=0.6;
  // 70 %
  if ComboBox1.Text='70 %'
  then WebBrowser1.OleObject.Document.Body.Style.Zoom:=0.7;
  // 80 %
  if ComboBox1.Text='80 %'
  then WebBrowser1.OleObject.Document.Body.Style.Zoom:=0.8;
  // 90 %
  if ComboBox1.Text='90 %'
  then WebBrowser1.OleObject.Document.Body.Style.Zoom:=0.9;
  // 100 %
  if ComboBox1.Text='100 %'
  then WebBrowser1.OleObject.Document.Body.Style.Zoom:=1;
  // 110 %
  if ComboBox1.Text='110 %'
  then WebBrowser1.OleObject.Document.Body.Style.Zoom:=1.1;
  // 125 %
  if ComboBox1.Text='125 %'
  then WebBrowser1.OleObject.Document.Body.Style.Zoom:=1.25;
   // 150 %
  if ComboBox1.Text='150 %'
  then WebBrowser1.OleObject.Document.Body.Style.Zoom:=1.5;
  // 175 %
  if ComboBox1.Text='175 %'
  then WebBrowser1.OleObject.Document.Body.Style.Zoom:=1.75;
  // 200 %
  if ComboBox1.Text='200 %'
  then WebBrowser1.OleObject.Document.Body.Style.Zoom:=2;
  // 250 %
  if ComboBox1.Text='250 %'
  then WebBrowser1.OleObject.Document.Body.Style.Zoom:=2.5;
  // 300 %
  if ComboBox1.Text='300 %'
  then WebBrowser1.OleObject.Document.Body.Style.Zoom:=3;
  // 400 %
  if ComboBox1.Text='400 %'
  then WebBrowser1.OleObject.Document.Body.Style.Zoom:=4;
  // 500 %
  if ComboBox1.Text='500 %'
  then WebBrowser1.OleObject.Document.Body.Style.Zoom:=5;
 except
  //
 end;
end;

procedure TForm3.WebBrowser1DocumentComplete(Sender: TObject;
  const pDisp: IDispatch; var URL: OleVariant);
begin
 ComboBox1.OnChange(Sender);
end;

procedure TForm3.SpeedButton1Click(Sender: TObject);
begin
 Close;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
 Close;
end;

end.
