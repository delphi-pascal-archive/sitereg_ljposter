unit sary;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, OleCtrls, SHDocVw, Buttons, ExtCtrls, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, ComCtrls, ActiveX, MSHTML,
  Menus, FileCtrl, ShellApi;

type
  TForm1 = class(TForm)
    IdHTTP1: TIdHTTP;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Button3: TButton;
    Button1: TButton;
    GroupBox1: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Edit3: TEdit;
    Edit7: TEdit;
    Label14: TLabel;
    Label15: TLabel;
    Memo1: TMemo;
    Edit8: TEdit;
    Label16: TLabel;
    Edit9: TEdit;
    Button4: TButton;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Button10: TButton;
    Button11: TButton;
    Edit2: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Memo2: TMemo;
    procedure PostWithWebBrowser(PostString: string; URL: OleVariant);
    procedure Button1Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure Memo1DblClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses reg_window;

{$R *.dfm}

// POST with WebBrowser
// Функция имеет два параметра - в первом просто передаются
// данные для отправки, а во втором - URL
procedure TForm1.PostWithWebBrowser(PostString: string; URL: OleVariant);
var
 Data: Pointer;
 PostData: OleVariant;
 Flags, TargetFrame, Headers: OleVariant;
begin
 PostData:=VarArrayCreate([0, Length(PostString)-1], varByte);
 Data:=VarArrayLock(PostData);
 try
  Move(PostString[1], Data^, Length(PostString));
 finally
  VarArrayUnlock(PostData);
 end;
 Flags:=EmptyParam;
 TargetFrame:=EmptyParam;
 Headers:=EmptyParam;
 Form3.WebBrowser1.Navigate2(URL, Flags, TargetFrame, PostData, Headers);
end;

// Вставка текста (программно сгенерированной HTML-страницы)
// в TWebBrowser не из файла, а из текстовой переменной
procedure TextToWebBrowser(Text: string; var WB: TWebBrowser);
var
 Document: IHTMLDocument2;
 V: OleVariant;
begin
 // Документ необходимо создать только один раз за текущую
 // сессию работы
 if WB.Document=nil
 then WB.Navigate('about:blank');
 // Ожидаем создания документа и позволяем обрабатывать все
 // сообщения
 while WB.Document=nil do
  Application.ProcessMessages;
 Document:=WB.Document as IHtmlDocument2;
 // Вставляем текст (до 2Гб)
 // следующие строчки внесены недавно - старый вариант
 // ункции не работал под XP
 V:=VarArrayCreate([0,0], varVariant);
 V[0]:=Text;
 Document.Write(PSafeArray(TVarData(v).VArray));
 Document.Close;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
 PostWithWebBrowser('url='+'www.имя_сайта.ru','http://webmaster.yandex.ru/add.xml?');
end;

procedure TForm1.Label6Click(Sender: TObject);
begin
 ShellExecute(0,'open','http://www.delphisources.ru','','',SW_SHOW);
end;

procedure TForm1.Memo1DblClick(Sender: TObject);
begin
 Memo1.SelectAll;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
 Str: TStringList;
 reply: string;
begin
 // окно просмотра регистрации страниц
 Form3.Show;
 Str:=TStringList.Create;
 Str.Clear;
 Str.Add('url='+Edit1.Text);
 try
  reply:=IdHTTP1.Post('http://webmaster.yandex.ru/add.xml?', Str);
  TextToWebBrowser(reply, Form3.WebBrowser1);
  ShowMessage('Отчет: страница добавлена в каталог Яндекс!');
 except
  TextToWebBrowser('Произошла ошибка при добавлении в базу Яндекса!', Form3.WebBrowser1);
 end;
 Str.Free;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
 reply: string;
 Str: TStringList;
begin
 Form3.Show;
 //
 Str:=TStringList.Create;
 Str.Clear;
 Str.Add('title='+Edit3.Text);
 Str.Add('url=http://'+Edit7.Text);
 Str.Add('comments='+Memo1.Text);
 Str.Add('contact='+Edit8.Text);
 Str.Add('femail='+Edit9.Text);
 //
{ Str.Add('subject='+Edit3.Text);
 Str.Add('url=http://'+Edit7.Text);
 Str.Add('body='+Memo1.Text);
 Str.Add('fname='+Edit8.Text);
 Str.Add('femail='+Edit9.Text); }
 try
  reply:=IdHTTP1.Post('http://robot.rambler.ru/cgi-bin/addsite.cgi?', Str);
  TextToWebBrowser(reply, Form3.WebBrowser1);
 except
  TextToWebBrowser('Произошла ошибка при добавлении в базу Рамблера!', Form3.WebBrowser1);
 end;
 Str.Free;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
 ShellExecute(0,'open',PChar(Edit2.Text),'','',SW_SHOW);
end;

procedure TForm1.Button10Click(Sender: TObject);
var
 Str: TStringList;
 reply: string;
begin
 Str:=TStringList.Create;
 Str.Clear;
 Str.Add('itemid='+Edit5.Text);
 Str.Add('journal='+Edit4.Text);
 Str.Add('usertype=anonymous');
 Str.Add('body='+Memo2.Text+'('+TimeToStr(Now)+')');
 // UTF-8
 try
  reply:=IdHTTP1.Post('http://www.livejournal.com/talkpost_do.bml?', Str);
  ShowMessage('Сообщение отправлено!');
 except
  ShowMessage('Сообщение НЕ отправлено!');
 end;
 Str.Free;
 //
 ShellExecute(0,'open',PChar(Edit2.Text),'','',SW_SHOW);
end;

end.
