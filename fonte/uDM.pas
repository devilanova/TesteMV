unit uDM;

interface

uses
  System.SysUtils, System.Classes, ZConnection, ZAbstractConnection;

type
  TDM = class(TDataModule)
    Connection: TZConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
