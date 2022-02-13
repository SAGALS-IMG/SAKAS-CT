unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, VclTee.TeeGDIPlus, Unit_PW,
  Vcl.StdCtrls, Vcl.ExtCtrls, VCLTee.Series, VCLTee.TeEngine, VCLTee.TeeProcs, System.StrUtils,
  VCLTee.Chart, Vcl.CheckLst, Vcl.Buttons, IniFiles, System.IOUtils, System.Types, Math, UFFT,
  ShellAPI, System.Threading, MMSystem;
const
  M = 2;

type
  TForm_main = class(TForm)
    SB: TStatusBar;
    GroupBox3: TGroupBox;
    Panel2: TPanel;
    SB_Help: TSpeedButton;
    BB_Proc: TBitBtn;
    CB_AllCK: TCheckBox;
    Panel3: TPanel;
    CLB_File: TCheckListBox;
    Splitter1: TSplitter;
    Memo: TRichEdit;
    OpenDialog1: TOpenDialog;
    SB_ViewInfo: TSpeedButton;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    BB_Load_data: TBitBtn;
    BB_Conv: TBitBtn;
    BB_Reconst: TBitBtn;
    BB_START: TBitBtn;
    BB_STOP: TBitBtn;
    BB_PostRec: TBitBtn;
    BB_Filter: TBitBtn;
    BB_Save: TBitBtn;
    PageControl1: TPageControl;
    TS: TTabSheet;
    SB_FN: TSpeedButton;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    SB_Copy: TSpeedButton;
    Label5: TLabel;
    Label27: TLabel;
    SB_FOpen: TSpeedButton;
    Edit_FN: TEdit;
    CB_FType: TComboBox;
    Edit_OW: TEdit;
    Edit_OH: TEdit;
    Edit_PW: TEdit;
    Edit_PH: TEdit;
    Edit_OFFX: TEdit;
    Edit_OFFY: TEdit;
    CB_Median: TCheckBox;
    CB_LN: TCheckBox;
    Edit_b: TEdit;
    Edit_a: TEdit;
    GroupBox2: TGroupBox;
    SB_GetROI: TSpeedButton;
    Shape1: TShape;
    Label3: TLabel;
    Label4: TLabel;
    Label54: TLabel;
    Bevel1: TBevel;
    CB_WE: TCheckBox;
    CB_Cor_ClH: TCheckBox;
    Edit_WE: TEdit;
    Edit_WEP: TEdit;
    CB_Cor_ClV: TCheckBox;
    CB_2PCor: TCheckBox;
    Edit_Top: TEdit;
    Edit_Bottom: TEdit;
    Edit_Right: TEdit;
    Edit_Left: TEdit;
    Edit_CL1: TEdit;
    Edit_CR1: TEdit;
    Edit_CL2: TEdit;
    Edit_CR2: TEdit;
    Edit_TC: TEdit;
    TabSheet2: TTabSheet;
    Chart1: TChart;
    Series1: TLineSeries;
    Series7: TFastLineSeries;
    Panel5: TPanel;
    SB_CH_File: TSpeedButton;
    Label6: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Edit_K: TEdit;
    Edit_SMin: TEdit;
    Edit_SMax: TEdit;
    CB_Int: TCheckBox;
    CB_FFT: TCheckBox;
    CB_OC: TCheckBox;
    Edit_OC_Zero: TEdit;
    TabSheet3: TTabSheet;
    Chart2: TChart;
    Series2: TLineSeries;
    Series8: TFastLineSeries;
    Panel6: TPanel;
    Label12: TLabel;
    Label34: TLabel;
    Label19: TLabel;
    Label13: TLabel;
    Label17: TLabel;
    SB_Check_Fil: TSpeedButton;
    Label18: TLabel;
    CB_LPF: TCheckBox;
    Edit_COF: TEdit;
    Edit_DC_Amp: TEdit;
    Edit_CDeg: TEdit;
    CB_hFilter: TCheckBox;
    Edit_hF_COF: TEdit;
    Edit_hF_Amp: TEdit;
    Edit_hF_COD: TEdit;
    CB_AutoNorm: TCheckBox;
    TabSheet4: TTabSheet;
    GroupBox5: TGroupBox;
    Chart3: TChart;
    Series3: TLineSeries;
    Series4: TLineSeries;
    Panel9: TPanel;
    SB_FindCenter: TSpeedButton;
    Label42: TLabel;
    Edit_W: TEdit;
    Chart4: TChart;
    Series5: TFastLineSeries;
    Panel7: TPanel;
    Label15: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label25: TLabel;
    Label33: TLabel;
    Bevel2: TBevel;
    Label29: TLabel;
    Label30: TLabel;
    Label55: TLabel;
    SB_Calc: TSpeedButton;
    CB_Copy: TSpeedButton;
    Edit_CTC: TEdit;
    UD_CTC: TUpDown;
    Edit_ang: TEdit;
    Edit_CTMag: TEdit;
    UD_nCPU: TUpDown;
    Edit_CPU: TEdit;
    Edit_CUDA: TEdit;
    CB_GPU: TCheckBox;
    Edit_S1: TEdit;
    Edit_S2: TEdit;
    Edit_S3: TEdit;
    Edit_C3: TEdit;
    Edit_C2: TEdit;
    Edit_C1: TEdit;
    Edit_dST: TEdit;
    CB_USE_Center: TCheckBox;
    TabSheet5: TTabSheet;
    GroupBox4: TGroupBox;
    Label31: TLabel;
    Label32: TLabel;
    CB_Cor_KUBOMI: TCheckBox;
    Edit_A2: TEdit;
    CB_CSlope: TCheckBox;
    Edit_A1: TEdit;
    Edit_A3: TEdit;
    GroupBox1: TGroupBox;
    Label14: TLabel;
    Label35: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label36: TLabel;
    Edit_RZero: TEdit;
    CB_CTRA: TCheckBox;
    Edit_ReShape_CTR: TEdit;
    Edit_CTMin: TEdit;
    Edit_CTMax: TEdit;
    CB_Reshape: TCheckBox;
    Edit_RW: TEdit;
    TabSheet6: TTabSheet;
    Panel8: TPanel;
    Label16: TLabel;
    Label24: TLabel;
    Label21: TLabel;
    Label57: TLabel;
    Label22: TLabel;
    Label56: TLabel;
    Label23: TLabel;
    SB_BFN: TSpeedButton;
    Label26: TLabel;
    Edit_SStart: TEdit;
    Edit_SEnd: TEdit;
    Edit_dST_ST: TEdit;
    Edit_CTCST: TEdit;
    Edit_CTCEND: TEdit;
    Edit_dST_End: TEdit;
    Edit_BFN: TEdit;
    Edit_Ext: TEdit;
    CB_Dig: TCheckBox;
    CB_SubDir: TCheckBox;
    CB_WE2: TCheckBox;
    CB_WOC: TCheckBox;
    Edit_Chat: TEdit;
    Label20: TLabel;
    Edit_ImgNo: TEdit;
    UD_ImgNo: TUpDown;
    Label28: TLabel;
    CB_deg: TComboBox;
    RB_Compled: TRadioButton;
    SB_TagList_Reload: TSpeedButton;
    Panel1: TPanel;
    RB_Proc3: TRadioButton;
    Edit_Dir: TEdit;
    Label37: TLabel;
    SB_Dir: TSpeedButton;
    BB_STOP_Proc: TBitBtn;
    CB_Ext: TComboBox;
    CB_Ser: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);

    procedure OpenTag(Sender: TObject);
    procedure WriteTag(Sender: TObject);
    procedure WriteComp(Sender: TObject);

    procedure SB_ViewInfoClick(Sender: TObject);
    procedure SB_GetROIClick(Sender: TObject);
    procedure SB_CH_FileClick(Sender: TObject);
    procedure SB_Check_FilClick(Sender: TObject);
    procedure SB_CalcClick(Sender: TObject);

    procedure Init_Cond(Sender: TObject);
    procedure CB_AllCKClick(Sender: TObject);
    procedure CLB_FileClick(Sender: TObject);

    procedure BB_Load_dataClick(Sender: TObject);
    procedure BB_SaveClick(Sender: TObject);

    procedure Integ(Sender: TObject);
    procedure BB_ConvClick(Sender: TObject);

    procedure Filter(Sender: TObject);
    procedure h_Filter(Sender: TObject);
    procedure BB_FilterClick(Sender: TObject);

    procedure BackPro(Sender:TObject);
    procedure BackPro2(Sender:TObject);
    procedure SB_FindCenterClick(Sender: TObject);
    procedure BB_ReconstClick(Sender: TObject);
    procedure BB_PostRecClick(Sender: TObject);

    procedure Write_Cond(FN:string);
    procedure BB_STARTClick(Sender: TObject);
    procedure BB_STOPClick(Sender: TObject);
    procedure SB_FOpenClick(Sender: TObject);
    procedure BB_ProcClick(Sender: TObject);
    procedure SB_HelpClick(Sender: TObject);
    procedure SB_BFNClick(Sender: TObject);
    procedure CB_CopyClick(Sender: TObject);
    procedure Edit_DC_AmpKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UD_ImgNoClick(Sender: TObject; Button: TUDBtnType);
    procedure SB_TagList_ReloadClick(Sender: TObject);
    procedure SB_DirClick(Sender: TObject);
    procedure BB_STOP_ProcClick(Sender: TObject);

  private
    { Private 宣言 }
  public
    { Public 宣言 }
  end;

var
  Form_main: TForm_main;

  PW :array[0..3] of TForm_PW;

  SData  : array[0..4] of TData;
  lRData : array[0..10] of TData;
  RData  : TData;

  Go, Drawing : boolean;
  SortData : array[0..8] of double;

  X,Y : array[0..210] of double;
  LSC : array[0..M] of double;

  vShift:double;

  GC : array[0..2100] of double;

  TagFN : string;
  PrePh : double;

implementation

{$R *.dfm}

uses Unit_SAKAS, Unit_ABOUT;

procedure TForm_main.FormCreate(Sender: TObject);
var
  lk : byte;
  Ini: TIniFile;
begin
  Go := false;
  Drawing := true;

  PageControl1.ActivePageIndex := 0;

  for lk :=0 to 3 do
    PW[lk] := TForm_PW.Create(Self);

  Ini := TIniFile.Create( ChangeFileExt( Application.ExeName, '.INI' ) );
  try
    Top     := Ini.ReadInteger( 'Form_main', 'Top', 100 );
    Left    := Ini.ReadInteger( 'Form_main', 'Left', 100 );
    Width   := Ini.ReadInteger( 'Form_main', 'Width', 750 );
    Height  := Ini.ReadInteger( 'Form_main', 'Height', 500 );
    if Ini.ReadBool( 'Form_main', 'InitMax', false ) then
      WindowState := wsMaximized
    else
      WindowState := wsNormal;

    Edit_ImgNo.Text := Ini.ReadString( 'Param', 'ImgNo', '10' );

    Edit_Dir.Text := Ini.ReadString( 'Param', 'Tag_Dir', '' );

    Edit_OW.Text  := Ini.ReadString( 'Param', 'OW', '1000' );
    Edit_OH.Text  := Ini.ReadString( 'Param', 'OH', '500' );
    Edit_PW.Text  := Ini.ReadString( 'Param', 'PW', '1000' );
    Edit_PH.Text  := Ini.ReadString( 'Param', 'PH', '500' );
    Edit_OFFX.Text  := Ini.ReadString( 'Param', 'OFFX', '0' );
    Edit_OFFY.Text  := Ini.ReadString( 'Param', 'OFFY', '0' );
    Edit_FN.Text  := Ini.ReadString( 'Param', 'FN', '' );
    Edit_BFN.Text  := Ini.ReadString( 'Param', 'BFN', '' );
    CB_FType.ItemIndex := Ini.ReadInteger('Param', 'FType', 1);
    CB_Ser.Checked := Ini.ReadBool('Param', 'Series', true);

    Edit_a.Text  := Ini.ReadString( 'Param', 'a', '1' );
    Edit_b.Text  := Ini.ReadString( 'Param', 'b', '0' );

    CB_WE.Checked := Ini.ReadBool( 'Param', 'WE', false );
    CB_Cor_ClH.Checked := Ini.ReadBool( 'Param', 'H_Cor', false );
    CB_Cor_ClV.Checked := Ini.ReadBool( 'Param', 'V_Cor', false );

    CB_2PCor.Checked := Ini.ReadBool( 'Param', '2PiCor', false );
    Edit_Left.Text := Ini.ReadString( 'Param', 'ROI_Left', '50' );
    Edit_Top.Text := Ini.ReadString( 'Param', 'ROI_Top', '100' );
    Edit_Right.Text := Ini.ReadString( 'Param', 'ROI_Right', '100' );
    Edit_Bottom.Text := Ini.ReadString( 'Param', 'ROI_Bottom', '300' );

    Edit_SMin.Text := Ini.ReadString( 'Param', 'Conv_Min', '-0.5' );
    Edit_SMax.Text := Ini.ReadString( 'Param', 'Conv_Max', '0.5' );
    Edit_K.Text := Ini.ReadString( 'Param', 'Conv_C', '0.35' );
    CB_Int.Checked := Ini.ReadBool('Param', 'Integ', false);

    CB_LPF.Checked := Ini.ReadBool( 'Param', 'Fil_ON', false );
    Edit_COF.Text := Ini.ReadString( 'Param', 'Fil_COF', '10' );
    Edit_DC_Amp.Text := Ini.ReadString( 'Param', 'Fil_Amp', '0.5' );
    Edit_CDeg.Text := Ini.ReadString( 'Param', 'Fil_Deg', '1' );

    CB_hFilter.Checked := Ini.ReadBool( 'Param', 'h_Fil_ON', false );
    Edit_hF_COF.Text := Ini.ReadString( 'Param', 'h_Fil_COF', '10' );
    Edit_hF_COD.Text := Ini.ReadString( 'Param', 'h_Fil_Deg', '0.5' );
    Edit_hF_Amp.Text := Ini.ReadString( 'Param', 'h_Fil_Amp', '1' );

    Edit_CTC.Text  := Ini.ReadString( 'Param', 'CTC', '0' );
    UD_CTC.Position := Ini.ReadInteger( 'Param', 'CTC_V', 0 );
    Edit_ang.Text := Ini.ReadString( 'Param', 'CT_Pro', '180' );
    Edit_CUDA.Text := Ini.ReadString( 'Param', 'GPU_CT','Cuda_CT.exe' );

    Edit_C1.Text := Ini.ReadString( 'Param', 'CTC1','0');
    Edit_S1.Text := Ini.ReadString( 'Param', 'CTC1_S','0');
    Edit_C2.Text := Ini.ReadString( 'Param', 'CTC2','0');
    Edit_S2.Text := Ini.ReadString( 'Param', 'CTC2_S','0');

    Edit_ReShape_CTR.Text := Ini.ReadString( 'Param', 'CT_Rect_R', '550' );
    Edit_RZero.Text := Ini.ReadString( 'Param', 'CT_OUT_V', '0' );
    Edit_CTMin.Text := Ini.ReadString( 'Param', 'CT_V_Min','-50' );
    Edit_CTMax.Text := Ini.ReadString( 'Param', 'CT_V_Max','50' );

    CB_Reshape.Checked := Ini.ReadBool( 'Param', 'Reshape_ON', false );
    Edit_A1.Text := Ini.ReadString( 'Param', 'CT_Reshape_a1','0');
    Edit_A2.Text := Ini.ReadString( 'Param', 'CT_Reshape_a2','0');
    Edit_A3.Text := Ini.ReadString( 'Param', 'CT_Reshape_a3','0');

    Edit_SStart.Text  := Ini.ReadString( 'Param', 'SStart', '' );
    Edit_SEnd.Text  := Ini.ReadString( 'Param', 'SEnd', '' );
    Edit_CTCST.Text  := Ini.ReadString( 'Param', 'CTCST', '' );
    Edit_CTCEnd.Text  := Ini.ReadString( 'Param', 'CTCEnd', '' );
    UD_CTC.Position := Ini.ReadInteger( 'Param', 'CTCenter', 0 );

    PW[0].Edit_PMax.Text:= Ini.ReadString( 'PW0', 'Max', '100' );
    PW[1].Edit_PMax.Text:= Ini.ReadString( 'PW1', 'Max', '100' );
    PW[2].Edit_PMax.Text:= Ini.ReadString( 'PW2', 'Max', '100' );
    PW[3].Edit_PMax.Text:= Ini.ReadString( 'PW3', 'Max', '100' );

    PW[0].Edit_PMin.Text:= Ini.ReadString( 'PW0', 'Min', '-100' );
    PW[1].Edit_PMin.Text:= Ini.ReadString( 'PW1', 'Min', '-100' );
    PW[2].Edit_PMin.Text:= Ini.ReadString( 'PW2', 'Min', '-100' );
    PW[3].Edit_PMin.Text:= Ini.ReadString( 'PW3', 'Min', '-100' );

  finally
    Ini.Free;
  end;
end;

procedure TForm_main.FormDestroy(Sender: TObject);
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create( ChangeFileExt( Application.ExeName, '.INI' ) );
  try
    Ini.WriteInteger( 'Form_main', 'Top', Top);
    Ini.WriteInteger( 'Form_main', 'Left', Left);
    Ini.WriteInteger( 'Form_main', 'Width', Width );
    Ini.WriteInteger( 'Form_main', 'Height', Height );

    Ini.WriteString( 'Param', 'ImgNo', Edit_ImgNo.Text  );
    Ini.WriteString( 'Param', 'Tag_Dir', Edit_Dir.Text );

    Ini.WriteString( 'Param', 'OW', Edit_OW.Text );
    Ini.WriteString( 'Param', 'OH', Edit_OH.Text );
    Ini.WriteString( 'Param', 'PW', Edit_PW.Text );
    Ini.WriteString( 'Param', 'PH', Edit_PH.Text );
    Ini.WriteString( 'Param', 'OFFX', Edit_OFFX.Text );
    Ini.WriteString( 'Param', 'OFFY', Edit_OFFY.Text );
    Ini.WriteString( 'Param', 'FN', Edit_FN.Text );
    Ini.WriteString( 'Param', 'BFN', Edit_BFN.Text );
    Ini.WriteInteger('Param', 'FType', CB_FType.ItemIndex );
    Ini.WriteBool('Param', 'Series', CB_Ser.Checked);

    Ini.WriteString( 'Param', 'a', Edit_a.Text  );
    Ini.WriteString( 'Param', 'b', Edit_b.Text );

    Ini.WriteBool( 'Param', 'WE', CB_WE.Checked);
    Ini.WriteBool( 'Param', 'H_Cor', CB_Cor_ClH.Checked);
    Ini.WriteBool( 'Param', 'V_Cor', CB_Cor_ClV.Checked);

    Ini.WriteBool( 'Param', '2PiCor', CB_2PCor.Checked );
    Ini.WriteString( 'Param', 'ROI_Left', Edit_Left.Text );
    Ini.WriteString( 'Param', 'ROI_Top', Edit_Top.Text );
    Ini.WriteString( 'Param', 'ROI_Right', Edit_Right.Text );
    Ini.WriteString( 'Param', 'ROI_Bottom', Edit_Bottom.Text );


    Ini.WriteString( 'Param', 'Conv_Min', Edit_SMin.Text );
    Ini.WriteString( 'Param', 'Conv_Max', Edit_SMax.Text );
    Ini.WriteString( 'Param', 'Conv_C', Edit_K.Text );
    Ini.WriteBool('Param', 'Integ', CB_Int.Checked );

    Ini.WriteBool( 'Param', 'Fil_ON', CB_LPF.Checked);
    Ini.WriteString( 'Param', 'Fil_COF', Edit_COF.Text);
    Ini.WriteString( 'Param', 'Fil_Amp', Edit_DC_Amp.Text);
    Ini.WriteString( 'Param', 'Fil_Deg', Edit_CDeg.Text);

    Ini.WriteBool( 'Param', 'h_Fil_ON', CB_hFilter.Checked);
    Ini.WriteString( 'Param', 'h_Fil_COF', Edit_hF_COF.Text);
    Ini.WriteString( 'Param', 'h_Fil_Amp', Edit_hF_Amp.Text);
    Ini.WriteString( 'Param', 'h_Fil_Deg', Edit_hF_COD.Text);

    Ini.WriteString( 'Param', 'CTC', Edit_CTC.Text );
    Ini.WriteInteger( 'Param', 'CTC_V', UD_CTC.Position);
    Ini.WriteString( 'Param', 'CT_Pro', Edit_ang.Text );
    Ini.WriteString( 'Param', 'GPU_CT', Edit_CUDA.Text);

    Ini.WriteString( 'Param', 'CTC1', Edit_C1.Text );
    Ini.WriteString( 'Param', 'CTC1_S', Edit_S1.Text );
    Ini.WriteString( 'Param', 'CTC2', Edit_C2.Text );
    Ini.WriteString( 'Param', 'CTC2_S', Edit_S2.Text );

    Ini.WriteString( 'Param', 'CT_Rect_R', Edit_ReShape_CTR.Text );
    Ini.WriteString( 'Param', 'CT_OUT_V', Edit_RZero.Text );
    Ini.WriteString( 'Param', 'CT_V_Min', Edit_CTMin.Text );
    Ini.WriteString( 'Param', 'CT_V_Max', Edit_CTMax.Text );

    Ini.WriteBool( 'Param', 'Reshape_ON', CB_Reshape.Checked);

    Ini.WriteString( 'Param', 'CT_Reshape_a1', Edit_A1.Text );
    Ini.WriteString( 'Param', 'CT_Reshape_a2', Edit_A2.Text );
    Ini.WriteString( 'Param', 'CT_Reshape_a3', Edit_A3.Text );

    Ini.WriteString( 'Param', 'SStart', Edit_SStart.Text );
    Ini.WriteString( 'Param', 'SEnd', Edit_SEnd.Text );
    Ini.WriteString( 'Param', 'CTCST', Edit_CTCST.Text );
    Ini.WriteString( 'Param', 'CTCEnd', Edit_CTCEnd.Text );
    Ini.WriteInteger( 'Param', 'CTCenter', UD_CTC.Position );

    Ini.WriteString( 'PW0', 'Max', PW[0].Edit_PMax.Text);
    Ini.WriteString( 'PW1', 'Max', PW[1].Edit_PMax.Text);
    Ini.WriteString( 'PW2', 'Max', PW[2].Edit_PMax.Text);
    Ini.WriteString( 'PW3', 'Max', PW[3].Edit_PMax.Text);

    Ini.WriteString( 'PW0', 'Min', PW[0].Edit_PMin.Text);
    Ini.WriteString( 'PW1', 'Min', PW[1].Edit_PMin.Text);
    Ini.WriteString( 'PW2', 'Min', PW[2].Edit_PMin.Text);
    Ini.WriteString( 'PW3', 'Min', PW[3].Edit_PMin.Text);
  finally
    Ini.Free;
  end;
end;

procedure TForm_main.OpenTag(Sender: TObject);
var
  Ini: TIniFile;
  li:longint;
  Proc1,Proc2 : string;
begin
  if UpperCase(ExtractFileExt(TagFN)) = '.TAG' then
  begin
    Ini := TIniFile.Create(TagFN);
    try
      li:=0;
      repeat
        Inc(li);
      until not(Ini.SectionExists('Proc_'+li.ToString));
      Proc1 := 'Proc_'+(li-1).ToString;     //CT Conv
      Proc2 := 'Proc_'+(li-2).ToString;     //Conv Proc1

      Edit_Ang.Text := Ini.ReadString('Method', 'Pro_angle', '360');
      if Ini.ReadInteger('Method', 'Pro_angle', 1) =1 then
        Edit_Ang.Text := '360';
      if Ini.ReadInteger('Method', 'Pro_angle', 1) =0 then
        Edit_Ang.Text := '180';
      RB_Compled.Checked:=false;

      if Ini.ReadString(Proc1,'Method','')='Reconstruction by FBP' then
      begin
        Edit_OW.Text := IntToStr(Ini.ReadInteger( Proc2, 'Width', 2048));
        Edit_OH.Text := IntToStr(Ini.ReadInteger( Proc2, 'Height', 2048));
        Edit_PW.Text := IntToStr(Ini.ReadInteger( Proc1, 'Width', 2048));
        Edit_PH.Text := IntToStr(Ini.ReadInteger( 'Method', 'Pro_Num', 2048));
        Edit_OFFX.Text := IntToStr(Ini.ReadInteger( Proc1, 'Offset_X', 0));
        Edit_OFFY.Text := IntToStr(Ini.ReadInteger( Proc1, 'Offset_Y', 0));
        RB_Proc3.Checked := true;
        Edit_FN.Text := ReplaceStr(Ini.ReadString(Proc2,'File_Name',''),'*','');
        Edit_BFN.Text := Edit_FN.Text;
        if Ini.ReadString( Proc1, 'Status','')='Completed' then
          RB_Compled.Checked:=true;
      end
      else
      begin
        Edit_OW.Text := IntToStr(Ini.ReadInteger( Proc1, 'Width', 2048));
        Edit_OH.Text := IntToStr(Ini.ReadInteger( Proc1, 'Height', 2048));
        Edit_PW.Text := Edit_OW.Text;
        Edit_PH.Text := IntToStr(Ini.ReadInteger( 'Method', 'Pro_Num', 2048));
        Edit_OFFX.Text := '0';
        Edit_OFFY.Text := '0';
        RB_Proc3.Checked := false;
        Edit_FN.Text := ReplaceStr(Ini.ReadString(Proc1,'File_Name',''),'*','');
        Edit_BFN.Text := Edit_FN.Text;
      end;
      CB_FType.ItemIndex := Ini.ReadInteger( Proc1, 'Format',3);

      if Ini.ValueExists( Proc1, 'Sino_ST') then
        Edit_SStart.Text := IntToStr(Ini.ReadInteger( Proc1, 'Sino_ST', 50));
      if Ini.ValueExists( Proc1, 'Sino_End') then
        Edit_SEnd.Text := IntToStr(Ini.ReadInteger( Proc1, 'Sino_End', 50));

      if Ini.ValueExists( Proc1, 'Width_Ext') then
        CB_WE.Checked := Ini.ReadBool( Proc1, 'Width_Ext', false );
      if Ini.ValueExists( Proc1, 'H_Cor') then
        CB_Cor_ClH.Checked := Ini.ReadBool( Proc1, 'H_Cor', false );
      if Ini.ValueExists( Proc1, 'V_Cor' ) then
        CB_Cor_ClV.Checked := Ini.ReadBool( Proc1, 'V_Cor', false );

      if Ini.ValueExists( Proc1, 'Conv_C') then
        Edit_K.Text := Ini.ReadString( Proc1, 'Conv_C', '0.35' );
      if Ini.ValueExists( Proc1, 'Conv_Min') then
        Edit_SMin.Text := Ini.ReadString( Proc1, 'Conv_Min', '-0.5' );
      if Ini.ValueExists( Proc1, 'Conv_Max') then
        Edit_SMax.Text := Ini.ReadString( Proc1, 'Conv_Max', '0.5' );

      if Ini.ValueExists( Proc1, 'Low_Fil_ON') then
        CB_LPF.Checked := Ini.ReadBool( Proc1, 'Low_Fil_ON', false );
      if Ini.ValueExists( Proc1, 'Low_Fil_COF') then
        Edit_COF.Text := Ini.ReadString( Proc1, 'Low_Fil_COF', '10' );
      if Ini.ValueExists( Proc1, 'Low_Fil_Deg') then
        Edit_CDeg.Text := Ini.ReadString( Proc1, 'Low_Fil_Deg', '1' );
      if Ini.ValueExists( Proc1, 'Low_Fil_Amp') then
        Edit_DC_Amp.Text := Ini.ReadString( Proc1, 'Low_Fil_Amp', '0.5' );

      if Ini.ValueExists( Proc1, 'High_Fil_ON') then
        CB_hFilter.Checked := Ini.ReadBool( Proc1, 'High_Fil_ON', false );
      if Ini.ValueExists( Proc1, 'High_Fil_COF') then
        Edit_hF_COF.Text := Ini.ReadString( Proc1, 'High_Fil_COF', '10' );
      if Ini.ValueExists( Proc1, 'High_Fil_Deg') then
        Edit_hF_COD.Text := Ini.ReadString( Proc1, 'High_Fil_Deg', '1' );
      if Ini.ValueExists( Proc1, 'High_Fil_Amp') then
        Edit_hF_Amp.Text := Ini.ReadString( Proc1, 'High_Fil_Amp', '0.5' );

      if Ini.ValueExists( Proc1, 'ST') then
        Edit_SStart.Text  := Ini.ReadString( Proc1, 'ST', '' );
      if Ini.ValueExists( Proc1, 'End' ) then
        Edit_SEnd.Text  := Ini.ReadString( Proc1, 'End', '' );

      if Ini.ValueExists( Proc1, 'CTCST') then
        Edit_CTCST.Text  := Ini.ReadString( Proc1, 'CTCST', '' );
      if Ini.ValueExists( Proc1, 'CTCEnd' ) then
        Edit_CTCEnd.Text  := Ini.ReadString( Proc1, 'CTCEnd', '' );

      if Ini.ValueExists( Proc1, 'Reshape_ON') then
        CB_Reshape.Checked := Ini.ReadBool( Proc1, 'Reshape_ON', false );
      if Ini.ValueExists( Proc1, 'CT_Rect_R') then
        Edit_ReShape_CTR.Text := Ini.ReadString( Proc1, 'CT_Rect_R', '550' );
      if Ini.ValueExists( Proc1, 'CT_OUT_V') then
        Edit_RZero.Text := Ini.ReadString( Proc1, 'CT_OUT_V', '0' );
      if Ini.ValueExists( Proc1, 'CT_V_Min') then
        Ini.WriteString( Proc1, 'CT_V_Min', Edit_CTMin.Text );
      if Ini.ValueExists( Proc1, 'CT_V_Max') then
        Ini.WriteString( Proc1, 'CT_V_Max', Edit_CTMax.Text );

    finally
      Ini.Free;
    end;
  end;
end;

procedure TForm_main.WriteTag(Sender: TObject);
var
  Ini: TIniFile;
  li:longint;
  Proc1 : string;
  BFN, CT_Dir,lFN : string;
begin
  if TagFN<>'' then
  begin
    Ini := TIniFile.Create(TagFN);
    try
      li:=0;
      repeat
        Inc(li);
      until not(Ini.SectionExists('Proc_'+li.ToString));
      if Ini.ReadString('Proc_'+(li-1).ToString,'Method','')='Reconstruction by FBP' then
        Proc1 := 'Proc_'+(li-1).ToString
      else
        Proc1 := 'Proc_'+(li).ToString;

      BFN := Form_Main.Edit_BFN.Text;
      if Form_Main.CB_SubDir.Checked then
        CT_Dir := TDirectory.GetParent(ExtractFilePath(BFN))+'\ct'
      else
        CT_Dir := TDirectory.GetParent(TDirectory.GetParent(ExtractFilePath(BFN)))+'\ct';
      CT_Dir := CT_Dir+'\';
      lFN :=ExtractFileName(BFN);

      Ini.WriteString( Proc1, 'File_Name', CT_Dir+lFN+'CT_*');
      Ini.WriteString( Proc1, 'Method', 'Reconstruction by FBP');

      Ini.WriteString( Proc1, 'Width', Edit_PW.Text );
      Ini.WriteString( Proc1, 'Height', Edit_PW.Text );
      Ini.WriteString( Proc1, 'Offset_X', Edit_OFFX.Text );
      Ini.WriteString( Proc1, 'Offset_Y', Edit_OFFY.Text );
      Ini.WriteString( Proc1, 'Pro', Edit_PH.Text );
      Ini.WriteInteger( Proc1, 'Format', 3);

      Ini.WriteBool( Proc1, 'Width_Ext', CB_WE.Checked);
      Ini.WriteBool( Proc1, 'H_Cor', CB_Cor_ClH.Checked);
      Ini.WriteBool( Proc1, 'V_Cor', CB_Cor_ClV.Checked);

      Ini.WriteString( Proc1, 'Conv_C', Edit_K.Text );
      Ini.WriteString( Proc1, 'Conv_Min', Edit_SMin.Text );
      Ini.WriteString( Proc1, 'Conv_Max', Edit_SMax.Text );

      Ini.WriteBool( Proc1, 'Low_Fil_ON', CB_LPF.Checked);
      Ini.WriteString( Proc1, 'Low_Fil_COF', Edit_COF.Text);
      Ini.WriteString( Proc1, 'Low_Fil_Amp', Edit_DC_Amp.Text);
      Ini.WriteString( Proc1, 'Low_Fil_Deg', Edit_CDeg.Text);

      Ini.WriteBool( Proc1, 'High_Fil_ON', CB_hFilter.Checked);
      Ini.WriteString( Proc1, 'High_Fil_COF', Edit_hF_COF.Text);
      Ini.WriteString( Proc1, 'High_Fil_Amp', Edit_hF_Amp.Text);
      Ini.WriteString( Proc1, 'High_Fil_Deg', Edit_hF_COD.Text);

      Ini.WriteString( Proc1, 'CT_Pro', Edit_ang.Text );

      Ini.WriteString( Proc1, 'ST', Edit_SStart.Text );
      Ini.WriteString( Proc1, 'End', Edit_SEnd.Text );
      Ini.WriteString( Proc1, 'CTCST', Edit_CTCST.Text );
      Ini.WriteString( Proc1, 'CTCEnd', Edit_CTCEnd.Text );

      Ini.WriteBool( Proc1, 'Reshape_ON', CB_Reshape.Checked);
      Ini.WriteString( Proc1, 'CT_Rect_R', Edit_ReShape_CTR.Text );
      Ini.WriteString( Proc1, 'CT_OUT_V', Edit_RZero.Text );
      Ini.WriteString( Proc1, 'CT_V_Min', Edit_CTMin.Text );
      Ini.WriteString( Proc1, 'CT_V_Max', Edit_CTMax.Text );

    finally
      Ini.Free;
    end;
  end
  else
    ShowMessage('TAG File NOT Selected!');
end;

procedure TForm_main.WriteComp(Sender: TObject);
var
  Ini: TIniFile;
  li:longint;
  Proc1 : string;
begin
  if TagFN<>'' then
  begin
    Ini := TIniFile.Create(TagFN);
    try
      li:=0;
      repeat
        Inc(li);
      until not(Ini.SectionExists('Proc_'+li.ToString));
      if Ini.ReadString('Proc_'+(li-1).ToString,'Method','')='Reconstruction by FBP' then
        Proc1 := 'Proc_'+(li-1).ToString
      else
        Proc1 := 'Proc_'+(li).ToString;

      Ini.WriteString( Proc1, 'Status', 'Completed');
    finally
      Ini.Free;
    end;
  end;
end;

procedure TForm_main.Init_Cond(Sender: TObject);
var
  lk:byte;
begin
  for lk:=0 to 2 do
  with PW[lk] do
  begin
    PW := StrToInt(Edit_PW.Text);
    PH := StrToInt(Edit_PH.Text);
    if lk=0 then
    begin
      OW := StrToInt(Edit_OW.Text);
      OH := StrToInt(Edit_OH.Text);
      OFFX := StrToInt(Edit_OffX.Text);
      OFFY := StrToInt(Edit_OffY.Text);
    end
    else
    begin
      OW := PW;
      OH := PH;
      OFFX := 0;
      OFFY := 0;
    end;
  end;
end;

procedure TForm_main.Write_Cond(FN: string);
var
  F:textfile;
begin
  AssignFile(F,FN);
  ReWrite(F);

  WriteLN(F, 'Image Orig Width: '+ Edit_OW.Text);
  WriteLN(F, 'Image Orig Pro: '+ Edit_OH.Text);
  WriteLN(F, 'Image Width: '+ Edit_PW.Text);
  WriteLN(F, 'Image Pro: '+ Edit_PH.Text);
  WriteLN(F, 'Image Offset X: '+ Edit_OffX.Text);
  WriteLN(F, 'Image Offset Pro: '+ Edit_OffY.Text);
  WriteLN(F);

  WriteLN(F, 'Conv_Min: '+ Edit_SMin.Text );
  WriteLN(F, 'Conv_Max: ', Edit_SMax.Text );
  WriteLN(F);

  WriteLN(F,  'Sino_Start: ', Edit_SStart.Text );
  WriteLN(F,  'Sino_End: ', Edit_SEnd.Text );
  WriteLN(F,  'CT_Center_ST: ', Edit_CTCST.Text );
  WriteLN(F,  'CT_Center_End: ', Edit_CTCEnd.Text );
  WriteLN(F);

  WriteLN(F,  'Ver_HighPass: ', CB_LPF.Checked );
  WriteLN(F,  'High_Fil_COF: ', Edit_COF.Text );
  WriteLN(F,  'High_Fil_Deg:  ', Edit_CDeg.Text );
  WriteLN(F,  'High_Fil_Amp:  ', Edit_DC_Amp.Text );
  WriteLN(F);

  WriteLN(F,  'hol_LowPass: ', CB_hFilter.Checked );
  WriteLN(F,  'Low_Fil_COF: ', Edit_hF_COF.Text );
  WriteLN(F,  'Low_PFil_Deg:  ', Edit_hF_COD.Text );
  WriteLN(F,  'Low_PFil_Amp:  ', Edit_hF_Amp.Text );
  WriteLN(F);

  CloseFile(F);
end;

procedure TForm_main.CB_AllCKClick(Sender: TObject);
var
  li:longint;
begin
  for li:=0 to CLB_File.Items.Count-1 do
    CLB_File.Checked[li] := CB_AllCK.Checked;
end;

procedure TForm_main.CLB_FileClick(Sender: TObject);
begin
  if (CLB_File.ItemIndex>=0) then
  begin
    TagFN :=  CLB_File.Items[CLB_File.ItemIndex];
    OpenTag(Sender);
    if Form_SAKAS.Showing then
      SB_ViewInfoClick(Sender);
  end;
end;

procedure TForm_main.Edit_DC_AmpKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  TmpVal : double;
begin
  if CB_AutoNorm.Checked then
  begin
    if TryStrToFloat(Edit_DC_Amp.Text, TmpVal) then
      Edit_hF_Amp.Text := (1-TmpVal).ToString;
  end;
end;

procedure TForm_main.BB_ProcClick(Sender: TObject);
var
  li:longint;
begin
  for li:=0 to CLB_File.Items.Count-1 do
  begin
    CLB_File.ItemIndex := li;
    if CLB_File.Checked[li] then
    begin
      CLB_FileClick(Sender);
      BB_STARTClick(Sender);
      CLB_File.Checked[li] := false;
    end;
  end;
end;

procedure TForm_main.BB_STOP_ProcClick(Sender: TObject);
var
  li:longint;
begin
  for li:=0 to CLB_File.Items.Count-1 do
    CLB_File.Checked[li] := false;
  Go := false;
  Drawing := true;
end;

procedure TForm_main.SB_FOpenClick(Sender: TObject);
var
  TmpStr,lStr :string;
  li:longint;
begin
  if OpenDialog1.Execute then
  begin
    if CB_Ser.Checked then
    begin
      TmpStr := OpenDialog1.FileName;
      lStr := '';
      li:=Length(TmpStr);
      while (TmpStr[li]<>'_') and (li>0) do
      begin
        lStr := TmpStr[li]+lStr;
        Dec(li);
      end;
      Edit_FN.Text := Copy(TmpStr,1,li);
      Edit_BFN.Text := Copy(TmpStr,1,li);
      Edit_ImgNo.Text := lStr;
    end
    else
      Edit_FN.Text := OpenDialog1.FileName;
  end;
end;

procedure TForm_main.UD_ImgNoClick(Sender: TObject; Button: TUDBtnType);
begin
  BB_Load_dataClick(Sender);
end;

procedure TForm_main.SB_BFNClick(Sender: TObject);
var
  TmpStr,lStr :string;
  li:longint;
begin
  if OpenDialog1.Execute then
  begin
    TmpStr := OpenDialog1.FileName;
    lStr := '';
    li:=Length(TmpStr);
    while (TmpStr[li]<>'_') and (li>0) do
    begin
      lStr := TmpStr[li]+lStr;
      Dec(li);
    end;
    Edit_FN.Text := Copy(TmpStr,1,li);
    Edit_BFN.Text := Copy(TmpStr,1,li);
    Edit_ImgNo.Text := lStr;
  end;
end;

procedure TForm_main.SB_DirClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    Edit_Dir.Text := ExtractFilePath(OpenDialog1.FileName);
    SB_TagList_ReloadClick(Sender);
  end;
end;

procedure TForm_main.SB_HelpClick(Sender: TObject);
begin
  AboutBox.Show;
end;

procedure TForm_main.SB_TagList_ReloadClick(Sender: TObject);
var
  Path: String;
  FileList: TStringDynArray;
  FileName: String;
begin
  if Edit_Dir.Text<>'' then
  begin
    CLB_File.Items.Clear;
    Path := ExtractFilePath(Edit_Dir.Text);

    FileList := TDirectory.GetFiles(Path, CB_Ext.Items[CB_Ext.ItemIndex] , TSearchOption.soTopDirectoryOnly);
    for FileName in FileList do
    begin
      CLB_File.Items.Add(FileName);
    end;
  end;
end;

//*****************************************************
//*****************************************************
//*****************************************************



procedure TForm_main.BB_Load_dataClick(Sender: TObject);
var
  a, b, TmpDbl, TmpDbl2, TC, Chat, lTmp:double;
  li, lj, lk, Ext_W, Ext_WP, L1, L2, R1, R2, lPW : longint;
  lROI : TRect;
  lFN : string;
begin
  if CB_Ser.Checked then
  begin
    li := StrToInt(Edit_ImgNo.Text);
    if CB_Dig.Checked then
      lFN := Edit_FN.Text+Format('%.4d',[li])+'.'+Edit_Ext.Text
    else
      lFN := Edit_FN.Text+IntToStr(li)+'.'+Edit_Ext.Text;
  end
  else
  begin
    lFN := Edit_FN.Text;
  end;

  if FileExists(lFN) then
  begin

    Init_Cond(Sender);
    if CB_FType.ItemIndex=2 then
      PW[0].Load_SglData(lFN,Sender);
    if CB_FType.ItemIndex=3 then
      PW[0].Load_Data(lFN,Sender);

    //線形計算
    a:= StrToFloat(Edit_a.Text);
    b:= StrToFloat(Edit_b.Text);
    for lj:=0 to PW[0].PH-1 do
      for li:=0 to PW[0].PW-1 do
        PW[0].PData[lj,li] := a*PW[0].PData[lj,li]+b;

    //対数計算
    if CB_LN.Checked then
      for lj:=0 to PW[0].PH-1 do
        for li:=0 to PW[0].PW-1 do
          if PW[0].PData[lj,li]>0 then
            PW[0].PData[lj,li] := -Ln(PW[0].PData[lj,li]);

    TC := StrToFloat(Edit_TC.Text);
    if TC<>0 then
    begin
      lPW := PW[0].PW;
      a := -4*TC/Sqr(lPW);
      for lj:=0 to PW[0].PH-1 do
        for li:=0 to PW[0].PW-1 do
          PW[0].PData[lj,li] := PW[0].PData[lj,li] -(a*Sqr(li-lPW/2)+TC);
    end;

    //横方向メディアン
    if CB_Median.Checked then
      PW[0].Median_Hol_Img(PW[0].PData);

    //横方向拡大
    if CB_WE.Checked then
    begin
      Ext_W := StrToInt(Edit_WE.Text);
      Ext_WP := StrToInt(Edit_WEP.Text);
      for lj:=0 to PW[0].PH-1 do
      begin
        TmpDbl := 0;
        for li:=Ext_WP to Ext_WP+9 do
          TmpDbl := TmpDbl+PW[0].PData[lj,li];
        TmpDbl := TmpDbl/10;

        TmpDbl2 := 0;
        for li:=PW[0].PW-(Ext_WP+9) to PW[0].PW-Ext_WP do
          TmpDbl2 := TmpDbl2+PW[0].PData[lj,li];
        TmpDbl2 := TmpDbl2/10;

        for li:=0 to PW[0].PW-1 do
          SData[0,lj,li+Ext_W] :=PW[0].PData[lj,li];

        for li:=0 to Ext_W+2 do
          SData[0,lj,li] := TmpDbl/Ext_W*li;

        for li:=PW[0].PW+Ext_W-3 to PW[0].PW+2*Ext_W-1 do
          SData[0,lj,li] := TmpDbl2/Ext_W*((PW[0].PW+2*Ext_W-1)-li);
      end;

      for lk :=0 to 2 do
      begin
        PW[lk].PW := PW[lk].PW+2*Ext_W;
        PW[lk].OW := PW[lk].OW+2*Ext_W;
      end;
      PW[0].PData := SData[0];
    end;

    //2π修正
    if CB_2PCor.Checked then
    begin
      Chat := StrToFloat(Edit_Chat.Text);
      lROI.Left := StrToInt(Edit_Left.Text);
      lROI.Top := StrToInt(Edit_Top.Text);
      lROI.Right := StrToInt(Edit_Right.Text);
      lROI.Bottom := StrToInt(Edit_Bottom.Text);
      TmpDbl :=0 ;
      for lj:=lROI.Top to lROI.Bottom do
        for li:=lROI.Left to lROI.Right do
          TmpDbl := TmpDbl + PW[0].PData[lj,li];
      TmpDbl := TmpDbl/(lROI.Width*lROI.Height);
      lTmp := PrePh;
      PrePh := TmpDbl;
      if TmpDbl-lTmp>Pi()+Chat then
      begin
        for lj:=0 to PW[0].PH-1 do
          for li:=0 to PW[0].PW-1 do
            PW[0].PData[lj,li] := PW[0].PData[lj,li]-2*Pi();
        PrePh := TmpDbl-2*Pi();
      end;
      if TmpDbl-lTmp<-Pi()+Chat then
      begin
        for lj:=0 to PW[0].PH-1 do
          for li:=0 to PW[0].PW-1 do
            PW[0].PData[lj,li] := PW[0].PData[lj,li]+2*Pi();
        PrePh := TmpDbl+2*Pi();
      end;
//      Memo.Lines.Add(lk.ToString+':'+TmpDbl.ToString+' : '+lPh.ToString);
    end;

    L1 := StrToInt(Edit_CL1.Text);
    L2 := StrToInt(Edit_CL2.Text);
    R1 := StrToInt(Edit_CR1.Text);
    R2 := StrToInt(Edit_CR2.Text);
    if CB_Cor_ClH.Checked then
    begin
      for lj:=0 to PW[0].PH-1 do
      begin
        a:=0;
        b:=0;
        for li:= L1 to L2 do
          a:= a+PW[0].PData[lj,li];
        for li:=PW[0].PW-R1 downto PW[0].PW-R2 do
          b:= b+PW[0].PData[lj,li];
        a:=a/(L2-L1);
        b:=b/(R2-R1);
        for li:=0 to PW[0].PW-1 do
          PW[0].PData[lj,li] := PW[0].PData[lj,li]-((b-a)*li/PW[0].PW+a);
      end;
    end;

    if CB_Cor_ClV.Checked then
    begin
      a:=0;
      b:=0;
      for lj:=1 to 5 do
      begin
        for li:= L1 to L2 do
          a := a+PW[0].PData[lj,li];
        for li:= PW[0].PW-R2 downto PW[0].PW-R2 do
          a := a+PW[0].PData[lj,li];
      end;
      for lj:=PW[0].PH-1 downto PW[0].PH-5 do
      begin
        for li:= L1 to L2 do
          b := b+PW[0].PData[lj,li];
        for li:= PW[0].PW-R2 downto PW[0].PW-R2 do
          b := b+PW[0].PData[lj,li];
      end;

      a := a/(L2-L1)/5;
      b := b/(L2-L1)/5;

      for lj:=0 to PW[0].PH-1 do
        for li:=0 to PW[0].PW-1 do
          PW[0].PData[lj,li] := PW[0].PData[lj,li]-((b-a)/PW[0].PH*lj+a);
    end;

    SData[0] := PW[0].PData;
    SData[1] := PW[0].PData;
    SData[2] := PW[0].PData;
    SData[3] := PW[0].PData;

    if Drawing then
    begin
      PW[0].Show;
      PW[0].Draw_Data(Sender);
    end;
  end
  else
  begin
    Go := false;
    ShowMessage('File NOT Found!');
  end;

end;

procedure TForm_main.BB_SaveClick(Sender: TObject);
begin
  WriteTag(Sender);
end;

procedure TForm_main.Integ(Sender: TObject);
var
  li,lj,lk,lPW,lPH:longint;
  TmpDbl : double;
begin
  lPW := PW[0].PW;
  lPH := PW[1].PH;

  for lj:=0 to lPH-1 do
  begin
    TmpDbl := 0;
    for li:=0 to lPW-1 do
      TmpDbl := TmpDbl+SData[0,lj,li];
    TmpDbl := TmpDbl/lPW;

    for li:=0 to lPW-1 do
      SData[1,lj,li] := SData[0,lj,li]-TmpDbl;

    for li:=0 to lPW-1 do
    begin
      TmpDbl := 0;
      for lk:=1 to li-1 do
        TmpDbl := TmpDbl-SData[1,lj,lk];
      for lk:=li to lPW-1 do
        TmpDbl := TmpDbl+SData[1,lj,lk];
      SData[2,lj,li] := -TmpDbl;
    end;
  end;
  SData[1] := SData[2];
end;

procedure TForm_main.BB_ConvClick(Sender: TObject);
var
  lPH, lPW, SheppMax,  BASE2, OFFW, Off_CR : longint;
  C, TmpDbl, PMin, PMax, x : double;
  li, lj, ii:longint;
  kernel : array[0..2300] of double;
  Shepp, TmpS, TmpO : array[-4100..4100] of double;

  InR, InI, OutR,OutI:TFFTData;
begin
  lPW := PW[0].PW;
  lPH := PW[0].PH;
  SheppMax := lPW div 10;
  C := StrToFloat(Edit_k.Text);
  Series1.Clear;
  Series7.Clear;
  TmpDbl:=0;

  if CB_Int.Checked then
    Integ(Sender)
  else
    SData[1] := SData[0];

  if not(CB_FFT.Checked) then
  begin
    for li:=-SheppMax to SheppMax do
    begin
      if li=0 then
        Shepp[li] := 1/4/Sqr(C)
      else
      begin
        if (li mod 2) =0 then
          Shepp[li] :=0
        else
          Shepp[li] := -1/(Sqr(li)*Sqr(Pi)*Sqr(C));
      end;
      Series1.AddXY(li,Shepp[li]);
      TmpDbl := TmpDbl+Abs(Shepp[li]);
    end;

    for li:=-SheppMax to SheppMax do
      Shepp[li] := Shepp[li] /TmpDbl*2;

    for lj:=0 to lPH-1 do
    begin
      for li:=0 to lPW-1 do
        TmpO[li+SheppMax] := SData[1,lj,li];

      TmpDbl := 0;
      for li:=1 to 10 do
        TmpDbl := TmpDbl+SData[1,lj,li];
      for li:=0 to SheppMax-1 do
        TmpO[li] := TmpDbl/10;

      TmpDbl := 0;
      for li:=lPW-10 to lPW-1 do
        TmpDbl := TmpDbl+SData[1,lj,li];
      for li:=lPW+SheppMax to lPW+2*SheppMax-1 do
        TmpO[li] := TmpDbl/10;

      for li:=SheppMax to lPW+SheppMax-1 do
      begin
        TmpDbl:=0;
        for ii:=-SheppMax to SheppMax-1 do
          TmpDbl :=TmpDbl+Shepp[ii]*TmpO[li+ii];
        TmpS[li] := TmpDbl;
      end;
      for li:=0 to lPW-1 do
        SData[1,lj,li] := TmpS[li+SheppMax];

      Application.ProcessMessages;
      SB.SimpleText := IntToStr(lj);
    end;
  end
  else
  begin
    li := 1;
    while lPW > Power(2,li) do
      Inc(li);
    Base2:=trunc(IntPower(2,li));
    OFFW := (BASE2-lPW) div 2;

    Series1.Clear;
    C:= StrToFloat(Edit_K.Text);

    for li:=0 to ((BASE2 div 2)-1) do
    begin
      x := li*pi/BASE2;
      kernel[li] := x*exp(-(2*C*C)*x*x);
      Series1.AddXY(li,kernel[li]);
    end;

    if CB_OC.Checked then
    begin
      Off_CR := StrToInt(Edit_OC_Zero.Text);

      for li:=0 to Off_CR do
        kernel[li] :=0;
      for li:=0 to ((BASE2 div 2)-1) do
      begin
        x := li*pi/BASE2;
        kernel[li+Off_CR] := x*exp(-(2*C*C)*x*x);
      end;
      for li:=0 to ((BASE2 div 2)-1) do
        Series7.AddXY(li,kernel[li]);
    end;

    for lj:=0 to lPH-1 do
    begin
      SetLength(InR,Base2);
      SetLength(InI,Base2);
      SetLength(OutR,Base2 div 2);
      SetLength(OutI,Base2 div 2);

      for li:=0 to BASE2-1 do
      begin
        InR[li]:=0;
        InI[li]:=0;
      end;
      for li:=0 to lPW-1 do
        InR[li+OFFW]:=SData[1,lj,li];

      FFT(InR,InI,OutR,OutI,true);

      for li:=0 to ((BASE2 div 2-1)) do
      begin
        OutR[li] := OutR[li]*kernel[li];
        OutI[li] := OutI[li]*kernel[li];
      end;

      InR := OutR;
      InI := OutI;

      FFT(InR,InI,OutR,OutI,false);

      for li:=0 to lPW-1 do
        SData[1,lj,li] := OutR[li+OFFW];
    end;
  end;

  PMin := StrToFloat(Edit_SMin.Text);
  PMax := StrToFloat(Edit_SMax.Text);

  for lj:=0 to lPH-1 do
    for li:=0 to lPW-1 do
    begin
      if SData[1,lj,li]<PMin then
        SData[1,lj,li] := PMin;
      if SData[1,lj,li]>PMax then
        SData[1,lj,li] := PMax;
    end;

  PW[1].PData := SData[1];

  if Drawing then
  begin
    PW[1].Edit_PMin.Text := Edit_SMin.Text;
    PW[1].Edit_PMax.Text := Edit_SMax.Text;
    PW[1].Show;
    PW[1].Draw_Data(Sender);
  end;

  SData[3] := SData[1];
  SData[2] := SData[1];
end;

procedure TForm_main.Filter(Sender: TObject);
var
  li,lj:longint;
  BASE2, OFFW, PPro, lPW, COF: longint;
  CDeg, Amp : double;
  InR, InI, OutR,OutI:TFFTData;
begin
  lPW := PW[0].PH;
  PPro := PW[0].PW;
  COF := StrToInt(Edit_COF.Text);
  CDeg :=StrToFloat(Edit_CDeg.Text);
  Amp := 1-StrToFloat(Edit_DC_Amp.Text);

  li := 1;
  while lPW > Power(2,li) do
    Inc(li);
  Base2:=trunc(IntPower(2,li));
  OFFW := (BASE2-lPW) div 2;


  for lj:=0 to PPro-1 do
  begin
    SetLength(InR,Base2);
    SetLength(InI,Base2);
    SetLength(OutR,Base2 div 2);
    SetLength(OutI,Base2 div 2);

    for li:=0 to BASE2-1 do
    begin
      InR[li]:=0;
      InI[li]:=0;
    end;
    for li:=0 to lPW-1 do
      InR[li+OFFW]:=SData[1,li,lj];

    FFT(InR,InI,OutR,OutI,true);

    if CB_LPF.Checked then
    begin
      for li:=0 to COF*5 do
      begin
        OutR[li]:=OutR[li]*(1-Amp*exp(-li/COF*CDeg));
        OutI[li]:=OutI[li]*(1-Amp*exp(-li/COF*CDeg));
      end;
    end;

    InR := OutR;
    InI := OutI;

    FFT(InR,InI,OutR,OutI,false);

    for li:=0 to lPW-1 do
      SData[2,li,lj] := OutR[li+OFFW];
  end;
end;

procedure TForm_main.h_Filter(Sender: TObject);
var
  li,lj:longint;
  BASE2, OFFW, PPro, lPW: longint;
  CDeg, Amp, COF : double;
  InR, InI, OutR,OutI:TFFTData;
begin
  lPW := PW[0].PW;
  PPro := PW[0].PH;
  COF := StrToFloat(Edit_hF_COF.Text);
  CDeg :=StrToFloat(Edit_hF_COD.Text);
  Amp := StrToFloat(Edit_hF_Amp.Text);

  li := 1;
  while lPW > Power(2,li) do
    Inc(li);
  Base2:=trunc(IntPower(2,li));
  OFFW := (BASE2-lPW) div 2;

  for lj:=0 to PPro-1 do
  begin
    SetLength(InR,Base2);
    SetLength(InI,Base2);
    SetLength(OutR,Base2 div 2);
    SetLength(OutI,Base2 div 2);

    for li:=0 to BASE2-1 do
    begin
      InR[li]:=0;
      InI[li]:=0;
    end;
    for li:=0 to lPW-1 do
      InR[li+OFFW]:=SData[1,lj,li];

    FFT(InR,InI,OutR,OutI,true);

    for li:=0 to Length(OutR)-1 do
    begin
      OutR[li]:=OutR[li]*(Amp*exp(-li/COF*CDeg));
      OutI[li]:=OutI[li]*(Amp*exp(-li/COF*CDeg));
    end;

    InR := OutR;
    InI := OutI;

    FFT(InR,InI,OutR,OutI,false);

    for li:=0 to lPW-1 do
      SData[2,lj,li] := OutR[li+OFFW]+SData[2,lj,li];
  end;
end;

procedure TForm_main.BB_FilterClick(Sender: TObject);
begin
  if CB_LPF.Checked then
    Filter(Sender)
  else
    SData[2] := SData[1];

  if CB_hFilter.Checked then
    h_Filter(Sender);

  PW[1].PData := SData[2];
  if Drawing then
  begin
    PW[1].Show;
    PW[1].Draw_Data(Sender);
  end;
  SData[3] := SData[2];
end;

procedure TForm_main.BackPro(Sender: TObject);
var
  i,j, lPW, PPro, m, mm:longint;
  RC : double;
  Ang, CTC, CTMag: double;

  lST,lEnd : array[0..15] of longint;

  nCPU : longint;
  tasks: array of ITask;
  ThreadPool  : TThreadPool;
begin
  CTC := StrToFloat(Edit_CTC.Text);
  CTMag := StrToFloat(Edit_CTMag.Text);
  lPW := PW[1].PW;
  PPro := PW[1].PH;

  for j:=0 to Round(lPW*CTMag)-1 do
    for i:=0 to Round(lPW*CTMag)-1 do
      RData[j,i] := 0;

  Ang := Pi*StrToFloat(Edit_ang.Text)/180;
  RC := lPW*CTMag/2+CTC;

  nCPU := StrToInt(Edit_CPU.Text);
  mm:=0;
  ThreadPool := TThreadPool.Create;
  ThreadPool.SetMinWorkerThreads(nCPU);
  Setlength (tasks ,nCPU);

  for m:=0 to nCPU-1 do
  begin
    lST[m] := m*PPro div nCPU;
    lEnd[m] := (m+1)*PPro div nCPU-1;
  end;

  for m:=0 to nCPU-1 do
  begin
    tasks[m] := TTask.Create (procedure
    var
      li, lj, lk,lFX0, lm,llST,llEnd:longint;
      lSinTh,lCosTh,ljS,lX0,ldx : double;
    begin
      lm:=mm;
      Inc(mm);
      llST := lm*PPro div nCPU;
      llEnd := (lm+1)*PPro div nCPU-1;

      for lj:=0 to Round(lPW*CTMag)-1 do
        for li:=0 to Round(lPW*CTMag)-1 do
          lRData[lm,lj,li] := 0;

      for lk:=llST to llEnd do
      begin
        RC := lPW*CTMag/2+CTC;
        lSinTh := Sin(Ang*lk/PPro);
        lCosTh := Cos(Ang*lk/PPro);
        for lj:=0 to Round(lPW*CTMag)-1 do
        begin
          ljS := (lj-RC)*lSinTh;
          for li:=0 to Round(lPW*CTMag)-1 do
          begin
            lX0 := ((li-RC)*lCosTh-ljS+RC)/CTMag;
            lFX0 := Trunc(lX0);
            if lFX0<0 then Dec(lFX0);
              ldx := lX0-lFX0;
            lRData[lm,lj,li] := lRData[lm,lj,li]+(1-ldx)*SData[3,lk,lFX0]+ldx*SData[3,lk,lFX0+1];
          end;
        end;
      end;
    end);
    //Memo.Lines.Add(m.ToString);
    tasks[m].Start;
  end;
  TTask.WaitForAll(tasks);
  ThreadPool.Free;

  for m:=0 to nCPU-1 do
  begin
    for j:=0 to Round(lPW*CTMag)-1 do
      for i:=0 to Round(lPW*CTMag)-1 do
        RData[j,i] := RData[j,i]+lRData[m,j,i];
  end;
end;

procedure TForm_main.BackPro2(Sender: TObject);
var
  li,lj, lk,lPW, PPro, lFX0:longint;
  RC : double;
  Ang, CTC: double;
  lSinTh,lCosTh,ljS,lX0,ldx : double;
begin
  CTC := StrToFloat(Edit_CTC.Text);
  lPW := PW[1].PW;
  PPro := PW[1].PH;

  for lj:=0 to lPW-1 do
    for li:=0 to lPW-1 do
      RData[lj,li] := 0;

  Ang := Pi*StrToFloat(Edit_ang.Text)/180;

  for lk:=0 to PPro-1 do
  begin
    RC := lPW/2+CTC+GC[lk];
    lSinTh := Sin(Ang*lk/PPro);
    lCosTh := Cos(Ang*lk/PPro);
    for lj:=0 to Round(lPW)-1 do
    begin
      ljS := (lj-RC)*lSinTh;
      for li:=0 to lPW-1 do
      begin
        lX0 := (li-RC)*lCosTh-ljS+RC;
        lFX0 := Trunc(lX0);
        if lFX0<0 then Dec(lFX0);
          ldx := lX0-lFX0;
        RData[lj,li] := RData[lj,li]+(1-ldx)*SData[3,lk,lFX0]+ldx*SData[3,lk,lFX0+1];
      end;
    end;
  end;
end;

procedure TForm_main.BB_ReconstClick(Sender: TObject);
var
  SXInfo: TShellExecuteInfo;
  li,lj, lPW, PPro,lMag: longint;
  TmpStr : string;
  FS : TFileStream;

  lSngData: array[0..4100] of single;
  fAng, dST: double;
begin
  if CB_USE_Center.Checked then
    SB_FindCenterClick(Sender);

  lPW := PW[1].PW;
  PPro := PW[1].PH;
  PW[2].PW := lPW;
  PW[2].PH := lPW;

  if CB_GPU.Checked then
  begin
    fAng := StrToFloat(Edit_Ang.Text)/180;
    dST := -StrToFloat(Edit_dST.Text)/180*Pi;
    FS := TFileStream.Create(Edit_FN.Text+'_Cuda', fmCreate);
    for lj:=0 to PPro-1 do
    begin
      for li:=0 to lPW-1 do
        lSngData[li] := SData[3,lj,li];
      FS.WriteBuffer(lSngData,lPW*4);
    end;
    FS.Free;

    with SXInfo do//TShellExecuteInfo構造体の初期化
    begin
      cbSize := SizeOf( SXInfo);
      fMask := SEE_MASK_NOCLOSEPROCESS;//これがないと終了待ち出来ない
      Wnd := Application.Handle;
      lpVerb := nil;     //他のアプリは'open'など
      lpFile := PChar(ExtractFilePath( Application.ExeName )+Edit_CUDA.Text);
      //0:Width of sinogram
      //1:Projection number
      //2:Center of CT
      //3:180 or 360 deg
      //4:Output file name
      //5:Min
      //6:Max
      //7:0:with conv 1:wo conv
      //8:dStart

      TmpStr := IntToStr(lPW)+' '+IntToStr(PPro)+' '+Edit_CTC.Text+' '+FloatToStr(fAng)+' '+Edit_FN.Text+'_Cuda'+' '+Edit_SMin.Text+' '+Edit_SMax.Text+' '+' 1 '+FloatToStr(dST);
      lpParameters := PChar(TmpStr);
      lpDirectory := nil;
      nShow := SW_HIDE;//SW_SHOW;
    end;
    //Memo.Lines.Add(TmpStr);
    ShellExecuteEx( @SXInfo);
    //起動したアプリケーションの終了待ち
    while WaitForSingleObject( SXInfo.hProcess, 0) = WAIT_TIMEOUT do
      Application.ProcessMessages;
    DeleteFile(Edit_FN.Text+'_Cuda');

    TmpStr := Edit_FN.Text+'_Cuda_CT';
    PW[2].Load_SglData(TmpStr,Sender);
    RData := PW[2].PData;
  end
  else
  begin
    if UD_nCPU.Position=1 then
      BackPro2(Sender)
    else
      BackPro(Sender);
    lMag :=StrToInt(Edit_CTMag.Text);
    lPW := lPW*lMag;
    PW[2].PData := RData;
  end;

  PW[2].Show;
  PW[2].Draw_Data(Sender);
end;

procedure TForm_main.BB_PostRecClick(Sender: TObject);
var
  li,lj,n, HPW, CTC, ReCTR, lPW, lPH, RW : longint;
  TmpDbl, ZBase, CTMin, CTMax : double;
  a,b,c,x,y: double;
begin
  TmpDbl := 0;
  HPW := PW[2].PW div 2;
  CTC := Round(StrToFloat(Edit_CTC.Text));
  ReCTR := StrToInt(Edit_ReShape_CTR.Text);
  RW := StrToInt(Edit_RW.Text);

  lPW := PW[2].PW;
  lPH := PW[2].PH;

  if CB_Reshape.Checked then
  begin
    if CB_CTRA.Checked then
    begin
      n:=0;
      for lj:=0 to lPH-1 do
        for li:=0 to lPW-1 do
          if (Sqrt(Sqr(li-HPW-CTC)+Sqr(lj-HPW-CTC))>RectR-RW) and
           (Sqrt(Sqr(li-HPW-CTC)+Sqr(lj-HPW-CTC))<RectR) then
          begin
            Inc(n);
            TmpDbl := TmpDbl + RData[lj,li];
          end;
      ZBase := TmpDbl / n;
      Edit_RZero.Text := ZBase.ToString;
    end
    else
      ZBase := StrToFloat(Edit_RZero.Text);

    CTMin := StrToFloat(Edit_CTMin.Text);
    CTMax := StrToFloat(Edit_CTMax.Text);
    for lj:=0 to lPH-1 do
      for li:=0 to lPW-1 do
      begin
        if PW[2].PData[lj,li] <CTMin then
          PW[2].PData[lj,li] :=CTMin;
        if PW[2].PData[lj,li] >CTMax then
          PW[2].PData[lj,li] :=CTMax;

        if Sqrt(Sqr(li-HPW-CTC)+Sqr(lj-HPW-CTC))>RectR then
          PW[2].PData[lj,li] :=ZBase
        //else
        //  PW[2].PData[lj,li] :=PW[2].PData[lj,li]-ZBase;
      end;
  end;

  a := StrToFloat(Edit_A1.Text);
  b := StrToFloat(Edit_A2.Text);
  c := StrToFloat(Edit_A3.Text);

  if CB_Cor_KUBOMI.Checked then
  begin
    for lj:=0 to lPH-1 do
      for li:=0 to lPW-1 do
      begin
        x := li-lPW/2-C;
        y := lj-lPH/2-C;
        PW[2].PData[lj,li] := PW[2].PData[lj,li] - a*(x*x+y*y)/2;
      end;
    end;

  if CB_CSlope.Checked then
  begin
    for lj:=0 to lPH do
      for li:=0 to lPW do
      begin
        PW[2].PData[lj,li] := PW[2].PData[lj,li] + b*lj +c*li;
      end;
  end;

  PW[2].Draw_Data(Sender);
end;

procedure TForm_main.BB_STARTClick(Sender: TObject);
var
  li, lj, lk,CTST,CTEnd,Ext_W : longint;
  CTCST,CTCEnd,dST_ST, dST_End : double;
  BFN, lFN : string;
  CT_Dir,Sino_Dir:string;
  StartTime : DWORD;
begin
  Go := true;
  Drawing := false;
  PrePh := 0;

  StartTime := timeGetTime;

  BFN := Edit_BFN.Text;
  if CB_SubDir.Checked then
    CT_Dir := TDirectory.GetParent(ExtractFilePath(BFN))+'\ct'
  else
    CT_Dir := TDirectory.GetParent(TDirectory.GetParent(ExtractFilePath(BFN)))+'\ct';
  if not(TDirectory.Exists(CT_Dir)) then
    MkDir(CT_Dir);
  CT_Dir := CT_Dir+'\';
  Sino_Dir := ExtractFilePath(BFN);
  lFN :=ExtractFileName(BFN);

  Write_Cond(CT_Dir+'CT_cond.txt');

  CTST := StrToInt(Edit_SStart.Text);
  CTEnd := StrToInt(Edit_SEnd.Text);
  CTCST := StrToFloat(Edit_CTCST.Text);
  CTCEnd := StrToFloat(Edit_CTCEnd.Text);
  dST_ST := StrToFloat(Edit_dST_ST.Text);
  dST_End := StrToFloat(Edit_dST_End.Text);

  for lk:=CTST to CTEnd do
  begin
    Edit_ImgNo.Text := lk.ToString;
    Edit_FN.Text := Sino_Dir+lFN;

    if CTST<>CTEnd then
    begin
      Edit_CTC.Text := FloatToStr((lk-CTST)/(CTEnd-CTST)*(CTCEnd-CTCST)+CTCST);
      Edit_dST.Text := FloatToStr((lk-CTST)/(CTEnd-CTST)*(dST_End-dST_ST)+dST_ST);
    end
    else
    begin
      Edit_CTC.Text := CTCST.ToString;
      Edit_dST.Text := '0';
    end;

    BB_Load_dataClick(Sender);
    if not(CB_WOC.Checked) then
      BB_ConvClick(Sender);

    BB_FilterClick(Sender);
    BB_ReconstClick(Sender);
    BB_PostRecClick(Sender);

    if FileExists(Edit_FN.Text+'_Cuda_CT') then
      DeleteFile(Edit_FN.Text+'_Cuda_CT');

    //拡張領域を取り除いて保存する場合
    if (CB_WE.Checked) and (CB_WE2.Checked) then
    begin
      Ext_W := StrToInt(Edit_WE.Text);
      for lj:= Ext_W to PW[2].PH-Ext_W-1 do
        for li:= Ext_W to PW[2].PW-Ext_W-1 do
          PW[2].PData[lj-Ext_W,li-Ext_W] := PW[2].PData[lj,li];
      PW[2].PW := PW[2].PW-2*Ext_W;
      PW[2].PH := PW[2].PH-2*Ext_W;
      if Edit_Ext.Text<>'' then
        PW[2].Save_Data(CT_Dir+lFN+'CT_'+Edit_Ext.Text+'_'+IntToStr(lk), Sender)
      else
        PW[2].Save_Data(CT_Dir+lFN+'CT_'+IntToStr(lk), Sender);
      Edit_PW.Text := PW[2].PW.ToString;
    end
    else
    begin
      if Edit_Ext.Text<>'' then
        PW[2].Save_Data(CT_Dir+lFN+'CT_'+Edit_Ext.Text+'_'+IntToStr(lk), Sender)
      else
        PW[2].Save_Data(CT_Dir+lFN+'CT_'+IntToStr(lk), Sender);
    end;

    SB.SimpleText := lk.ToString+' : '+IntToStr(lk-CTST)+'/'+IntToStr(CTEnd-CTST)+':';

    Application.ProcessMessages;
    if not(Go) then
    begin
      ShowMessage('Reconstraction Canceled !!!');
      Exit;
    end;
  end;
  Memo.Lines.Add('Total time: '+FormatFloat('############', timeGetTime - StartTime)+' [ms]');

  //ShowMessage('Reconstraction Completed !!!');
  Drawing := true;
  WriteTag(Sender);
  WriteComp(Sender);
end;

procedure TForm_main.BB_STOPClick(Sender: TObject);
begin
  Go := false;
  Drawing := true;
end;


//*****************************************************
//*****************************************************
//*****************************************************

procedure TForm_main.CB_CopyClick(Sender: TObject);
begin
  Edit_SStart.Text := Edit_S1.Text;
  Edit_SEnd.Text := Edit_S2.Text;
  Edit_CTCST.Text := Edit_C1.Text;
  Edit_CTCEND.Text := Edit_C2.Text;
end;

procedure TForm_main.SB_CalcClick(Sender: TObject);
var
  S1,S2,ST,C1,C2,CT:double;
begin
  S1 := StrToFloat(Edit_S1.Text);
  S2 := StrToFloat(Edit_S2.Text);
  ST := StrToFloat(Edit_S3.Text);
  C1 := StrToFloat(Edit_C1.Text);
  C2 := StrToFloat(Edit_C2.Text);

  CT :=(C2-C1)/(S2-S1)*(ST-S1)+C1;
  Edit_C3.Text := FloatToStr(CT);
end;

procedure TForm_main.SB_Check_FilClick(Sender: TObject);
var
  li, COF:longint;
  CDeg, Amp : double;
begin
  Series8.Clear;
  Series2.Clear;

  COF := StrToInt(Edit_COF.Text);
  CDeg :=StrToFloat(Edit_CDeg.Text);
  Amp := 1-StrToFloat(Edit_DC_Amp.Text);
  for li:=0 to COF*5-1 do
    Series2.AddXY(li,1-Amp*exp(-li/COF*CDeg));

  COF := StrToInt(Edit_hF_COF.Text);
  CDeg :=StrToFloat(Edit_hF_COD.Text);
  Amp := StrToFloat(Edit_hF_Amp.Text);
  for li:=0 to COF*5-1 do
    Series8.AddXY(li,Amp*exp(-li/COF*CDeg));
end;

procedure TForm_main.SB_CH_FileClick(Sender: TObject);
var
  lPH, lPW, SheppMax,  BASE2 : longint;
  C, x : double;
  li:longint;
  kernel : array[0..2300] of double;
begin
  lPW := PW[0].PW;
  lPH := PW[0].PH;
  SheppMax := lPW div 10;
  C := StrToFloat(Edit_k.Text);
  Series1.Clear;

  li := 1;
  while lPW > Power(2,li) do
    Inc(li);
  Base2:=trunc(IntPower(2,li));

  for li:=0 to ((BASE2 div 2)-1) do
  begin
    x := li*pi/BASE2;
    kernel[li] := x*exp(-(2*C*C)*x*x);
    Series1.AddXY(li,kernel[li]);
  end;
end;

procedure TForm_main.SB_FindCenterClick(Sender: TObject);
var
  li,lk,lPW,lPro,dW, lmink:longint;
  S : array[0..2,0..2600] of double;
  dI : array[0..1,-200..200] of double;
  TmpDbl, lmin: double;
  lBase : array[0..1] of double;
begin
  lPW := PW[0].PW;
  lPro := PW[0].PH;
  dW := StrToInt(Edit_W.Text);
  lMink := 0;
  lmin := 1e10;
  Series3.Clear;
  Series4.Clear;
  Series5.Clear;

  if CB_deg.ItemIndex=0 then
  begin
    for li:=0 to lPW-1 do
    begin
      S[0,li] := SData[0,0,li];
      S[1,li] := SData[0,lPro div 2-1,lPW-li-1];
    end;
  end
  else
  begin
    for li:=0 to lPW-1 do
    begin
      S[0,li] := SData[0,0,li];
      S[1,li] := SData[0,lPro -1,li];
    end;
  end;

  for lk:=0 to 1 do
  begin
    lBase[lk]:=0;
    for li:=0 to lPW-1 do
      lBase[lk]:=S[lk,li]+lBase[lk];
    lBase[lk] := lBase[lk] / lPW;
  end;

  for lk:=0 to 1 do
    for li:=0 to lPW-1 do
      S[lk,li] := S[lk,li]-lBase[lk];

  for li:=0 to lPW-1 do
  begin
    Series3.AddXY(li,S[0,li]);
    Series4.AddXY(li,S[1,li]);
  end;

  for lk:=-dW to dW do
  begin
    TmpDbl := 0;
    for li:=dW to lPW-dW-1 do
      TmpDbl := TmpDbl + Abs(S[0,li]-S[1,li+lk]);
    if lmin>TmpDbl then
    begin
      lmin := TmpDbl;
      lmink := lk;
    end;
    dI[0,lk]:=TmpDbl;
    X[lk+DW] := lk;
    Y[lk+dW] := ln(TmpDbl);
  end;

  for lk:=-dW to dW do
    Series5.AddXY(-lk/2,dI[0,lk]);
//  Least_Fit(Sender,dW*2+1);
//  for lk:=-dW to dW do
//  begin
//    TmpDbl :=LSC[2]*lK*lk+LSC[1]*lk+LSC[0];
//    Series6.AddXY(lk,TmpDbl);
//  end;
//  f:=-0.5*LSC[1]/LSC[2];
//  Memo.Lines.Add('Least Square : '+f.ToString);
//  Memo.Lines.Add('Min          : '+(-lmink/2-1).ToString);
  Edit_CTC.Text :=(-lmink/2).ToString;
end;

procedure TForm_main.SB_GetROIClick(Sender: TObject);
begin
  Edit_Left.Text := PW[0].Edit_Left.Text;
  Edit_Top.Text := PW[0].Edit_Top.Text;
  Edit_Right.Text := PW[0].Edit_Right.Text;
  Edit_Bottom.Text := PW[0].Edit_Bottom.Text;
end;

procedure TForm_main.SB_ViewInfoClick(Sender: TObject);
begin
  if CLB_File.ItemIndex>=0 then
  begin
    Form_SAKAS.Tag_FN := CLB_File.Items[CLB_File.ItemIndex];
    if Form_SAKAS.Tag_FN<>'' then
      Form_SAKAS.Load_Karte(Form_SAKAS.Tag_FN,Sender);
  end;
  Form_SAKAS.Show;
end;

end.
