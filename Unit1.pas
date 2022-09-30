unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Data.DB, Data.Win.ADODB,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, Vcl.Bind.Grid, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,
  Data.Bind.Grid, Data.Bind.DBScope, Unit2, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    nameEdit: TEdit;
    postcodeEdit: TEdit;
    streetEdit: TEdit;
    cityEdit: TEdit;
    doorEdit: TEdit;
    specialEdit: TEdit;
    Button1: TButton;
    taxEdit: TEdit;
    productEdit: TEdit;
    idEdit: TEdit;
    priceEdit: TEdit;
    taxLabel: TLabel;
    productLabel: TLabel;
    idLabel: TLabel;
    priceLabel: TLabel;
    DBGrid2: TDBGrid;
    Button2: TButton;
    DBGrid3: TDBGrid;
    partnerEdit: TEdit;
    partnerLabel: TLabel;
    boughtproductEdit: TEdit;
    boughtproductLabel: TLabel;
    quantityLabel: TLabel;
    boughtspecialLabel: TLabel;
    boughtpriceLabel: TLabel;
    noteLabel: TLabel;
    quantityEdit: TEdit;
    boughtpriceEdit: TEdit;
    noteEdit: TEdit;
    boughtspecialEdit: TEdit;
    Button3: TButton;
    Button4: TButton;
    newpartnerEdit: TEdit;
    newproductEdit: TEdit;
    newspecialEdit: TEdit;
    newquantityEdit: TEdit;
    newnoteEdit: TEdit;
    newpartnerLabel: TLabel;
    newproductLabel: TLabel;
    newquantityLabel: TLabel;
    newnoteLabel: TLabel;
    newspecialLabel: TLabel;
    livepartnerLabel: TLabel;
    liveproductLabel: TLabel;
    livepriceLabel: TLabel;
    livenettoLabel: TLabel;
    livespecialLabel: TLabel;
    livelocationLabel: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    livebruttoLabel: TLabel;
    Engedmény: TLabel;
    serverEdit: TEdit;
    pwEdit: TEdit;
    loginButton: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure newpartnerEditChange(Sender: TObject);
    // procedure loginButtonClick(Sender: TObject);
    // procedure newproductEditChange(Sender: TObject);
    // procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  var
    price: integer;
    tax: integer;
    special: integer;
    quantity: integer;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  firstStatement: boolean;
begin
  with DataModule2 do
  begin
    ADOQuery1.Close;
    ADOQuery1.SQL.Clear;
    ADOQuery1.SQL.Add('SELECT * FROM Partnerek');
    if (nameEdit.Text = '') and (postcodeEdit.Text = '') and
      (cityEdit.Text = '') and (streetEdit.Text = '') and (doorEdit.Text = '')
      and (specialEdit.Text = '') then
    begin
      ADOQuery1.Open;
    end
    else
    begin
      firstStatement := true;
      ADOQuery1.SQL.Add('WHERE');
      if nameEdit.Text <> '' then
      begin
        ADOQuery1.SQL.Add('NÉV = ''' + nameEdit.Text + '''');
        firstStatement := false;
      end;
      if postcodeEdit.Text <> '' then
      begin
        if firstStatement = false then
          ADOQuery1.SQL.Add('AND')
        else
          firstStatement := false;
        ADOQuery1.SQL.Add('IRÁNYÍTÓSZÁM = ''' + postcodeEdit.Text + '''');
      end;
      if cityEdit.Text <> '' then
      begin
        if firstStatement = false then
          ADOQuery1.SQL.Add('AND')
        else
          firstStatement := false;
        ADOQuery1.SQL.Add('TELEPÜLÉS = ''' + cityEdit.Text + '''');
      end;
      if streetEdit.Text <> '' then
      begin
        if firstStatement = false then
          ADOQuery1.SQL.Add('AND')
        else
          firstStatement := false;
        ADOQuery1.SQL.Add('UTCA = ''' + streetEdit.Text + '''');
      end;
      if doorEdit.Text <> '' then
      begin
        if firstStatement = false then
          ADOQuery1.SQL.Add('AND')
        else
          firstStatement := false;
        ADOQuery1.SQL.Add('HÁZSZÁM = ''' + doorEdit.Text + '''');
      end;
      if specialEdit.Text <> '' then
      begin
        if firstStatement = false then
          ADOQuery1.SQL.Add('AND')
        else
          ADOQuery1.SQL.Add('ENGEDMÉNY = ''' + specialEdit.Text + '''');
      end;
      ADOQuery1.Open;
    end;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  firstStatement: boolean;
begin
  with DataModule2 do
  begin
    ADOQuery2.Close;
    ADOQuery2.SQL.Clear;
    ADOQuery2.SQL.Add('SELECT * FROM Termékek');
    if (idEdit.Text = '') and (productEdit.Text = '') and (taxEdit.Text = '')
      and (priceEdit.Text = '') then
    begin
      ADOQuery2.Open;
    end
    else
    begin
      firstStatement := true;
      ADOQuery2.SQL.Add('WHERE');
      if idEdit.Text <> '' then
      begin
        ADOQuery2.SQL.Add('CIKKSZÁM = ''' + idEdit.Text + '''');
        firstStatement := false;
      end;
      if productEdit.Text <> '' then
      begin
        if firstStatement = false then
          ADOQuery2.SQL.Add('AND')
        else
          firstStatement := false;
        ADOQuery2.SQL.Add('MEGNEVEZÉS = ''' + productEdit.Text + '''');
      end;
      if taxEdit.Text <> '' then
      begin
        if firstStatement = false then
          ADOQuery2.SQL.Add('AND')
        else
          firstStatement := false;
        ADOQuery2.SQL.Add('ÁFA_KULCS = ''' + taxEdit.Text + '''');
      end;
      if priceEdit.Text <> '' then
      begin
        if firstStatement = false then
          ADOQuery2.SQL.Add('AND')
        else
          ADOQuery2.SQL.Add('ELADÁSI_EGYSÉGÁR = ''' + priceEdit.Text + '''');
      end;
      ADOQuery2.Open;
    end;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  firstStatement: boolean;
begin
  with DataModule2 do
  begin
    ADOQuery3.Close;
    ADOQuery3.SQL.Clear;
    ADOQuery3.SQL.Add('SELECT * FROM Tételek');
    if (partnerEdit.Text = '') and (boughtproductEdit.Text = '') and
      (quantityEdit.Text = '') and (boughtpriceEdit.Text = '') and
      (boughtspecialEdit.Text = '') and (noteEdit.Text = '') then
    begin
      ADOQuery3.Open;
    end
    else
    begin
      firstStatement := true;
      ADOQuery3.SQL.Add('WHERE');
      if partnerEdit.Text <> '' then
      begin
        ADOQuery3.SQL.Add('PARTNER = ''' + partnerEdit.Text + '''');
        firstStatement := false;
      end;
      if boughtproductEdit.Text <> '' then
      begin
        if firstStatement = false then
          ADOQuery3.SQL.Add('AND')
        else
          firstStatement := false;
        ADOQuery3.SQL.Add('TERMÉK = ''' + boughtproductEdit.Text + '''');
      end;
      if quantityEdit.Text <> '' then
      begin
        if firstStatement = false then
          ADOQuery3.SQL.Add('AND')
        else
          firstStatement := false;
        ADOQuery3.SQL.Add('MENNYISÉG = ''' + quantityEdit.Text + '''');
      end;
      if boughtpriceEdit.Text <> '' then
      begin
        if firstStatement = false then
          ADOQuery3.SQL.Add('AND')
        else
          firstStatement := false;
        ADOQuery3.SQL.Add('EGYSÉGÁR = ''' + boughtpriceEdit.Text + '''');
      end;
      if boughtspecialEdit.Text <> '' then
      begin
        if firstStatement = false then
          ADOQuery3.SQL.Add('AND')
        else
          firstStatement := false;
        ADOQuery3.SQL.Add('ENGEDMÉNY = ''' + boughtspecialEdit.Text + '''');
      end;
      if noteEdit.Text <> '' then
      begin
        if firstStatement = false then
          ADOQuery3.SQL.Add('AND');
        ADOQuery3.SQL.Add('MEGJEGYZÉS = ''' + noteEdit.Text + '''');
      end;
      ADOQuery3.Open;
    end;
  end;
end;

{
  procedure TForm1.loginButtonClick(Sender: TObject);
  begin

  end;


  procedure TForm1.Button4Click(Sender: TObject);
  var
  tempspecial: string;
  tempprice: string;
  begin
  with DataModule2 do
  begin
  tempspecial := Copy(livespecialLabel.Caption, 0,
  (length(livespecialLabel.Caption) - 1));
  ADOQuery4.Close;
  ADOQuery4.SQL.Clear;
  ADOQuery4.SQL.Add('INSERT INTO Tételek');
  ADOQuery4.SQL.Add('VALUES (' + newpartnerEdit.Text + ', ' +
  newproductEdit.Text + ', ' + newquantityEdit.Text + ', ' +
  livepriceLabel.Caption + ', ' + tempspecial + ', ' +
  newnoteEdit.Text + ')');
  ADOQuery3.Open;
  end;
  end;
}
procedure TForm1.newpartnerEditChange(Sender: TObject);
begin
  with DataModule2 do
  begin
    ADOQuery4.Close;
    ADOQuery4.SQL.Clear;
    ADOQuery4.SQL.Add('SELECT * FROM Partnerek WHERE NÉV = ''' +
      newpartnerEdit.Text + '''');
    ADOQuery4.Open;
    livepartnerLabel.Caption := ADOQuery4.Fields[0].AsString;
    livelocationLabel.Caption := ADOQuery4.Fields[1].AsString + ' ' +
      ADOQuery4.Fields[2].AsString + ' ' + ADOQuery4.Fields[3].AsString + ' ' +
      ADOQuery4.Fields[4].AsString;
    if (ADOQuery4.Fields[5].AsString <> '') and (newspecialEdit.Text = '') then
      livespecialLabel.Caption := ADOQuery4.Fields[5].AsString + '%'
    else if newspecialEdit.Text <> '' then
      livespecialLabel.Caption := newspecialEdit.Text + '%'
    else
      livespecialLabel.Caption := '';
    special := ADOQuery4.Fields[5].AsInteger;
  end;
end;

{
  procedure TForm1.newproductEditChange(Sender: TObject);
  var
  tempprice: integer;
  finalprice: integer;
  begin
  with DataModule2 do
  begin
  ADOQuery4.Close;
  ADOQuery4.SQL.Clear;
  ADOQuery4.SQL.Add('SELECT * FROM Termékek WHERE CIKKSZÁM = ''' +
  newproductEdit.Text + '''');
  ADOQuery4.Open;
  liveproductLabel.Caption := ADOQuery4.Fields[1].AsString;
  tempprice := ADOQuery4.Fields[3].AsInteger;
  if special > 0 then finalprice := (tempprice * 100) mod special;

  // if (ADOQuery4.Fields[3].AsString <> '') and (special <> null) then tempPrice := round(ADOQuery4.Fields[3].AsInteger * (100/special));
  livepriceLabel.Caption := IntToStr(finalprice);
  end;
  end;
}
end.
