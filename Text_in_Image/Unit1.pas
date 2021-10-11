unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Memo1: TMemo;
    procedure Memo1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
 Image1.Parent.DoubleBuffered:=true;
end;

procedure TForm1.Memo1Change(Sender: TObject);
var
 Rectangle: TRect;
begin
 // Efface l'image
 Image1.Picture:=nil;
 // Récupère le rectangle de dessin
 Rectangle:=Image1.Canvas.ClipRect;
 // Spécifie la police
 Image1.Canvas.Font.Name:='MS Sans Serif';
 // Spécifie la couleur du font de l'image
 Image1.Canvas.Brush.Style:=bsClear;

 // Dessine le texte dans l'image, centré avec les sauts de lignes et des
 // ellipses (...) à la fin des mots qui dépassent la taille de la ligne
 // Plus d'infos sur cette fonction:
 // http://msdn2.microsoft.com/en-us/library/ms533909
 Windows.DrawText(Image1.Canvas.Handle, PChar(Memo1.Text), -1,
           Rectangle, DT_WORDBREAK+DT_CENTER+ DT_WORD_ELLIPSIS);
end;

end.
