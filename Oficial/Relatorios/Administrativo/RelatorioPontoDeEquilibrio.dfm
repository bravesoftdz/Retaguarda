�
 TFORMRELATORIOPONTODEEQUILIBRIO 0+  TPF0�TFormRelatorioPontoDeEquilibrioFormRelatorioPontoDeEquilibrioLeft2Top� Caption"   Relatório de Ponto de EquilíbrioClientWidth$PixelsPerInch`
TextHeight �TProgressBar	ProgressoWidth$  �
TScrollBox	ScrollBoxWidth$ �TPanelPanelCentroHeight+ �TSpeedButtonBtnVisualizarLeft� Top�   TRadioGroup
GroupCustoLeftTop� WidthuHeight6Caption
Base CustoFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameTahoma
Font.StylefsBold 	ItemIndexItems.StringsCusto   Custo Médio 
ParentFontTabOrder   �
TScrollBoxScrollBoxTopoWidth  �TPanelPanelCabecalhoWidth  �TPanelPanelNavigatorWidth  �TAdvOfficeStatusBarAdvPanelNavigatorWidth       �TTableTblTemporaria	TableNamePontoDeEquilibrio.db 
TDateFieldTblTemporariaDia	FieldNameDia  TFloatFieldTblTemporariaVendaDia	FieldNameVendaDiaDisplayFormat#,##0.00  TFloatFieldTblTemporariaImpostosDia	FieldNameImpostosDiaDisplayFormat#,##0.00  TFloatFieldTblTemporariaComissaoDia	FieldNameComissaoDiaDisplayFormat#,##0.00  TFloatFieldTblTemporariaVendaLiqDia	FieldNameVendaLiqDiaDisplayFormat#,##0.00  TFloatFieldTblTemporariaCustoMercDia	FieldNameCustoMercDiaDisplayFormat#,##0.00  TFloatFieldTblTemporariaVlrMargemDia	FieldNameVlrMargemDiaDisplayFormat#,##0.00  TFloatFieldTblTemporariaPercMargemDia	FieldNamePercMargemDiaDisplayFormat#,##0.00  TFloatFieldTblTemporariaCustoFixo	FieldName	CustoFixoDisplayFormat#,##0.00  TFloatFieldTblTemporariaPontoEquilibrio	FieldNamePontoEquilibrio   TRxQuerySQLNotaFiscalDatabaseNameDBSQL.Stringsselect?cast(sum(NOTAFISCAL.NOFIN2VLRICMS) as numeric(15,2))as VlrICMS,>cast(sum(NOTAFISCAL.NOFIN2VLRIPI)  as numeric(15,2))as VlrIPI,?cast(sum(NOTAFISCAL.NOFIN2VLRNOTA) as numeric(15,2))as VlrNOTA,NOTAFISCAL.NOFIDEMISfrom
NOTAFISCALUleft outer join OPERACAOESTOQUE on NOTAFISCAL.OPESICOD     = OPERACAOESTOQUE.OPESICODwhereNOFICSTATUS = 'E' andYOperacaoEstoque.OPESCENTRADASAIDA = 'S' and OperacaoEstoque.OPESCGERAFINANCEIRO = 'S' and(%MEmpresa) and(%MData)group by	NOFIDEMISorder by	NOFIDEMIS  MacrosDataTypeftStringNameMEmpresa	ParamTypeptInputValue0=0 DataTypeftStringNameMData	ParamTypeptInputValue0=0  Left�Top TFloatFieldSQLNotaFiscalVLRICMS	FieldNameVLRICMS  TFloatFieldSQLNotaFiscalVLRIPI	FieldNameVLRIPI  TFloatFieldSQLNotaFiscalVLRNOTA	FieldNameVLRNOTA  TDateTimeFieldSQLNotaFiscalNOFIDEMIS	FieldName	NOFIDEMIS   TRxQuerySQLCupomDatabaseNameDBSQL.Stringsselect 	cast(sum(CUPON2TOTITENS -CUPON2DESC +CUPON2ACRESC +/CUPON3CREDTAXA) as numeric(15,2)) as VlrCupom ,5cast(sum(CUPON2VLRICMS) as numeric(15,2)) as VlrIcms,	CUPODEMISfromcupomwherecupocstatus = 'A'and(%MEmpresa) and(%MData)group by	CUPODEMISorder by	CUPODEMIS MacrosDataTypeftStringNameMEmpresa	ParamTypeptInputValue0=0 DataTypeftStringNameMData	ParamTypeptInputValue0=0  Left�Top TFloatFieldSQLCupomVLRCUPOM	FieldNameVLRCUPOM  TFloatFieldSQLCupomVLRICMS	FieldNameVLRICMS  TDateTimeFieldSQLCupomCUPODEMIS	FieldName	CUPODEMIS   TRxQuerySQLEmpresaCustoDatabaseNameDBSQL.Stringsselect*fromEMPRESACUSTOwhere(%MEmpresa)and(%MMes)and(%MAno) MacrosDataTypeftStringNameMEmpresa	ParamTypeptInputValue0=0 DataTypeftStringNameMMes	ParamTypeptInputValue0=0 DataTypeftStringNameMAno	ParamTypeptInputValue0=0  Left�Top TIntegerFieldSQLEmpresaCustoEMPRICOD	FieldNameEMPRICODOriginDB.EMPRESACUSTO.EMPRICOD  TIntegerFieldSQLEmpresaCustoEMCTICOD	FieldNameEMCTICODOriginDB.EMPRESACUSTO.EMCTICOD  TStringFieldSQLEmpresaCustoEMCTA2MES	FieldName	EMCTA2MESOriginDB.EMPRESACUSTO.EMCTA2MES	FixedChar	Size  TStringFieldSQLEmpresaCustoEMCTA4ANO	FieldName	EMCTA4ANOOriginDB.EMPRESACUSTO.EMCTA4ANO	FixedChar	Size  TStringFieldSQLEmpresaCustoEMCTA60DESCR	FieldNameEMCTA60DESCROriginDB.EMPRESACUSTO.EMCTA60DESCR	FixedChar	Size<  TStringFieldSQLEmpresaCustoEMCTCFIXOVARIA	FieldNameEMCTCFIXOVARIAOriginDB.EMPRESACUSTO.EMCTCFIXOVARIA	FixedChar	Size  TFloatFieldSQLEmpresaCustoEMCTN2VALOR	FieldNameEMCTN2VALOROriginDB.EMPRESACUSTO.EMCTN2VALOR  TFloatFieldSQLEmpresaCustoEMCTN2PERC	FieldName
EMCTN2PERCOriginDB.EMPRESACUSTO.EMCTN2PERC   TRxQuerySQLCustoMedioNotaDatabaseNameDBSQL.StringsselectUcast(SUM( %CustoProduto * NOTAFISCALITEM.NFITN3QUANT) as numeric(15,2))AS CUSTOMEDIO,NOTAFISCAL.NOFIDEMISfromNOTAFISCALITEMSinner join NOTAFISCAL           ON NOTAFISCAL.NOFIA13ID = NOTAFISCALITEM.NOFIA13ID Uleft outer join OPERACAOESTOQUE ON NOTAFISCAL.OPESICOD     = OPERACAOESTOQUE.OPESICODMLEFT OUTER JOIN PRODUTO         ON NOTAFISCALITEM.PRODICOD = PRODUTO.PRODICODwhere NOTAFISCAL.NOFICSTATUS = 'E' andYOperacaoEstoque.OPESCENTRADASAIDA = 'S' and OperacaoEstoque.OPESCGERAFINANCEIRO = 'S' and(%MEmpresa) and(%MData)group byNOTAFISCAL.NOFIDEMIS MacrosDataTypeftStringNameCustoProduto	ParamTypeptInputValue0=0 DataTypeftStringNameMEmpresa	ParamTypeptInputValue0=0 DataTypeftStringNameMData	ParamTypeptInputValue0=0  Left�Top TFloatFieldSQLCustoMedioNotaCUSTOMEDIO	FieldName
CUSTOMEDIO  TDateTimeFieldSQLCustoMedioNotaNOFIDEMIS	FieldName	NOFIDEMIS   TRxQuerySQLCustoMedioCupomDatabaseNameDBSQL.StringsselectNcast(SUM( %CustoProduto * CUPOMITEM.CPITN3QTD) as numeric(15,2))AS CUSTOMEDIO,	CUPODEMISfrom	cupomitem9inner join cupom on cupom.cupoa13id = cupomitem.cupoa13idHLEFT OUTER JOIN PRODUTO         ON cupomitem.PRODICOD = PRODUTO.PRODICODwherecupocstatus = 'A'and(%MEmpresa) and(%MData)group by	CUPODEMISorder by	CUPODEMIS MacrosDataTypeftStringNameCustoProduto	ParamTypeptInputValue0=0 DataTypeftStringNameMEmpresa	ParamTypeptInputValue0=0 DataTypeftStringNameMData	ParamTypeptInputValue0=0  LeftTop TFloatFieldSQLCustoMedioCupomCUSTOMEDIO	FieldName
CUSTOMEDIO  TDateTimeFieldSQLCustoMedioCupomCUPODEMIS	FieldName	CUPODEMIS   TCrpeReportAboutVersion and Credits...DesignControlsDesign-Time Window ControlsVersion.Major Version.Minor 
ReportName>C:\Desenv\UnitGestao Oficial\Relatorios\Vendas Por Periodo.rptMargins.Left�Margins.Right�Margins.Top�Margins.Bottom�DiscardSavedData	PrintDate.Day PrintDate.Month PrintDate.Year Subreports.NLinks Subreports.OnDemandTables.Number�SortFields.Number�GroupSortFields.Number�GroupCondition.Number�GroupCondition.GroupTypegtOtherGroupOptions.Number�GroupOptions.GroupTypegtOtherGroupOptions.RepeatGHcDefaultGroupOptions.KeepTogethercDefaultGroupOptions.TopNOptions	tnDefaultGroupOptions.TopNGroups�GroupOptions.TopNDiscardOtherscDefaultParamFields.ParamTypepfStringParamFields.ParamSourcepsReportParamFields.Info.AllowNullcDefaultParamFields.Info.AllowEditingcDefault$ParamFields.Info.AllowMultipleValuescDefaultParamFields.Info.ValueType
vtDiscreteParamFields.Info.PartOfGroupcDefault'ParamFields.Info.MutuallyExclusiveGroupcDefaultParamFields.Info.GroupNum�ParamFields.ValueLimitcDefaultParamFields.Ranges.Number�ParamFields.Ranges.RangeBoundsIncludeStartAndEndParamFields.PLDescriptionOnlycDefaultParamFields.PLSortMethodpsmDefaultSortParamFields.PLSortByDescriptioncDefaultSectionFormat.BackgroundColorclNoneSectionHeight.Height ConnectMethoduseLogOnInfoSQL.Params.ParamTypespCharLogOnInfo.Table�SessionInfo.Table�SessionInfo.Propagate	Export.Excel.Constant       �@Export.Excel.AreaDExport.CharSepQuote WindowZoom.Magnification�WindowStatewsMaximizedWindowButtonBar.CloseBtn	WindowButtonBar.PrintSetupBtn	WindowButtonBar.SearchBtn	WindowCursor.GroupArea	wcDefaultWindowCursor.GroupAreaField	wcDefaultWindowCursor.DetailArea	wcDefaultWindowCursor.DetailAreaField	wcDefaultWindowCursor.Graph	wcDefaultGraphType.Number�GraphType.StylebarSideBySideGraphText.Number�GraphText.TitleFont.CharsetDEFAULT_CHARSETGraphText.TitleFont.ColorclWindowTextGraphText.TitleFont.Height�GraphText.TitleFont.NameMS Sans SerifGraphText.TitleFont.Style GraphText.SubTitleFont.CharsetDEFAULT_CHARSETGraphText.SubTitleFont.ColorclWindowTextGraphText.SubTitleFont.Height�GraphText.SubTitleFont.NameMS Sans SerifGraphText.SubTitleFont.Style GraphText.FootNoteFont.CharsetDEFAULT_CHARSETGraphText.FootNoteFont.ColorclWindowTextGraphText.FootNoteFont.Height�GraphText.FootNoteFont.NameMS Sans SerifGraphText.FootNoteFont.Style !GraphText.GroupsTitleFont.CharsetDEFAULT_CHARSETGraphText.GroupsTitleFont.ColorclWindowText GraphText.GroupsTitleFont.Height�GraphText.GroupsTitleFont.NameMS Sans SerifGraphText.GroupsTitleFont.Style GraphText.DataTitleFont.CharsetDEFAULT_CHARSETGraphText.DataTitleFont.ColorclWindowTextGraphText.DataTitleFont.Height�GraphText.DataTitleFont.NameMS Sans SerifGraphText.DataTitleFont.Style GraphText.LegendFont.CharsetDEFAULT_CHARSETGraphText.LegendFont.ColorclWindowTextGraphText.LegendFont.Height�GraphText.LegendFont.NameMS Sans SerifGraphText.LegendFont.Style !GraphText.GroupLabelsFont.CharsetDEFAULT_CHARSETGraphText.GroupLabelsFont.ColorclWindowText GraphText.GroupLabelsFont.Height�GraphText.GroupLabelsFont.NameMS Sans SerifGraphText.GroupLabelsFont.Style  GraphText.DataLabelsFont.CharsetDEFAULT_CHARSETGraphText.DataLabelsFont.ColorclWindowTextGraphText.DataLabelsFont.Height�GraphText.DataLabelsFont.NameMS Sans SerifGraphText.DataLabelsFont.Style GraphOptions.Number�GraphOptions.Max       ���GraphOptions.Min       ���GraphOptions.DataValuescDefaultGraphOptions.GridLinescDefaultGraphOptions.LegendcDefaultGraphOptions.BarDirection	bdDefaultGraphOptionInfo.Number�GraphOptionInfo.Color	gcDefaultGraphOptionInfo.Legend	glDefaultGraphOptionInfo.PieSize
gpsDefaultGraphOptionInfo.PieSlice
gslDefaultGraphOptionInfo.BarSize
gbsDefaultGraphOptionInfo.BarDirection	bdDefaultGraphOptionInfo.MarkerSize
gmsDefaultGraphOptionInfo.MarkerShape
gshDefaultGraphOptionInfo.DataPoints
gdpDefaultGraphOptionInfo.NumberFormat
gnfDefaultGraphOptionInfo.ViewingAngle
gvaDefaultGraphData.Number�GraphData.RowGroupN�GraphData.ColGroupN�GraphData.SummarizedFieldN�GraphData.DirectionUnknownGraphAxis.Number�GraphAxis.GridLineX
gglDefaultGraphAxis.GridLineY
gglDefaultGraphAxis.GridLineY2
gglDefaultGraphAxis.GridLineZ
gglDefaultGraphAxis.DataValuesY
gdvDefaultGraphAxis.DataValuesY2
gdvDefaultGraphAxis.DataValuesZ
gdvDefaultGraphAxis.NumberFormatY
gnfDefaultGraphAxis.NumberFormatY2
gnfDefaultGraphAxis.NumberFormatZ
gnfDefaultGraphAxis.DivisionTypeY
gdvDefaultGraphAxis.DivisionTypeY2
gdvDefaultGraphAxis.DivisionTypeZ
gdvDefaultGraphAxis.DivisionsY GraphAxis.DivisionsY2 GraphAxis.DivisionsZ Left� Top   