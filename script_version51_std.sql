
# SELECCIONAR LA BASE DE DATOS DE CONFIGURACION
USE APCONFIG;

TRUNCATE DPAUDELIMODCNF;
TRUNCATE DPAUDELIMODDIC;
TRUNCATE DPAUDITORIA;
TRUNCATE DPFILEAPLICA;
TRUNCATE DPFILES;
TRUNCATE DPINTREF;

UPDATE DPIPC SET IPC_TASA=ROUND((IPC_TASA/1000),2), 
                 IPC_INPC=ROUND((IPC_INPC/1000),2);

UPDATE DPPANELERPEMP SET ERP_MONTO=ROUND((ERP_MONTO/1000),2);
UPDATE DPTARIFASRET SET TBR_MTOSUP=ROUND((TBR_MTOSUP/1000),2);
UPDATE DPUNIDADTRIB SET UNI_MONTO=ROUND((UNI_MONTO/1000),2);






# SELECCIONAR LA BASE DE DATOS PARA RECONVERSION
USE ERP_EYNGROUP;

TRUNCATE DPAUDITAELIMOD;
TRUNCATE DPAUDITOR     ;
TRUNCATE DPPCLOGAPP    ;

UPDATE DPACTIVOS SET ATV_COSADQ=ROUND((ATV_COSADQ/1000),2), 
                     ATV_VALSAL=ROUND((ATV_VALSAL/1000),2), 
                     ATV_DEPACU=ROUND((ATV_DEPACU/1000),2), 
                     ATV_DEPMEN=ROUND((ATV_DEPMEN/1000),2),
                     ATV_COSUND=ROUND((ATV_COSUND/1000),2);

UPDATE DPASIENTOCENCOS SET ACC_MONTO=ROUND((ACC_MONTO/1000),2);

UPDATE DPASIENTOS SET MOC_MONTO=ROUND((MOC_MONTO/1000),2),
                      MOC_VALCAM=ROUND((MOC_VALCAM/1000),2);

					  
					  
					  
					  ***PROBADO HASTA AQUI***
					  
					  
					  
					  
UPDATE DPASIENTOSPRE SET ASP_MONTO='78'
UPDATE DPASIENTOSPREC SET MOC_MONTO='500'

UPDATE DPBCOCTAREGCON SET ECB_MONTO='500', ECB_SALDO='500',ECB_DEBE='500',ECB_HABER='500'

UPDATE DPCAJAMOV SET CAJ_MONTO='500', CAJ_MTOIMP='500'

UPDATE DPCAJATRANFS SET TDC_MONTO='500'

UPDATE DPCBTEPAGO SET PAG_MONTO='500', PAG_MTOIVA='500'

UPDATE DPCLIENTEPROG SET DPG_MONTO='500', DPG_MTOORG='500'

UPDATE DPCLIENTES SET CLI_LIMITE='500', CLI_MTOVEN='500',CLI_CAPSUS='500',CLI_CAPPAG='500',

UPDATE DPCLIENTESCERO SET CCG_LIMITE='500', CCG_MTOVEN='500', CCG_CAPSUS='500', CCG_CAPPAG='500' 



UPDATE DPCLIENTESISLR SET RAI_MONTO='500'

UPDATE DPCLIENTESSUC SET SDC_VIATIC=SDC_VIATIC/1000

UPDATE DPCOMPVALORAGRE SET CVA_MONTO=CVA_MONTO/1000


***//A PARTIR DE AQUI USE VALOR CAMBIARIO *///***

UPDATE DPCTABANCOCON SET MOB_VALCAM=MOB_VALCAM ,MOB_MONTO=500 ,MOB_MONNAC=500 ,MOB_MTOIDB=500 ,MOB_MTOIMP=500 ,MOB_MTOCOM=500 ,



UPDATE DPCTABANCOMOV SET MOB_MONTO=500 , MOB_MONNAC=500 ,MOB_VALCAM=500 ,MOB_MTOIDB=500 ,MOB_MTOIMP=500 ,MOB_MTOCOM=500 ,MOB_SLDBCO=500 ,


UPDATE DPCTABCOEDOE SET ECE_MONTO=200, ECE_SALDO=500


UPDATE DPDEPRECIAACT SET DEP_MONTO=500, DEP_MTOORG=500, DEP_MTOFS=500, DEP_MTOFN=500,
DEP_MTOFIS=500, DEP_MTOFIN=500,DEP_DEPFIN=500, 
DEP_IPCINI=ROUND((DEP_IPCINI/1000),5) ,
DEP_IPCFIN=ROUND((DEP_IPCFIN/1000),5) ,
DEP_IPCFAC=ROUND((DEP_IPCFAC/1000),5) ,
DEP_INPINI=ROUND((DEP_INPINI/1000),5) ,
DEP_INPFIN=ROUND((DEP_INPFIN/1000),5) ,
DEP_INPFAC=ROUND((DEP_INPFAC/1000),5) ,
DEP_DEPFIS=ROUND((DEP_DEPFIS/1000),2) ,
DEP_BASFIS=ROUND((DEP_BASFIS/1000),2) ,
DEP_BASFIN=ROUND((DEP_BASFIN/1000),2) ,


UPDATE DPDOCCLI SET DOC_NETO=200,DOC_OTROS=200,DOC_IMPOTR=200,DOC_VALCAM=200,
DOC_MTOCOM=200,DOC_BASNET=200,DOC_MTOIVA=200,DOC_MTOEXE=200,


UPDATE DPDOCCLICTA SET CCD_MONTO=500, CCD_TOTAL=500

UPDATE DPDOCCLIISLR SET RXC_MTOBAS='500', RXC_MTOSUJ='500', RXC_MTODED='500', RXC_MTORET='500'


UPDATE DPDOCCLIIVA SET IXD_MTOBAS=500,IXD_MTOIVA=500


UPDATE DPDOCCLIPROG SET PLC_MONTO=500

UPDATE DPDOCPRO SET DOC_NETO=500 ,DOC_OTROS=500 ,DOC_IMPOTR=500 ,DOC_VALCAM=500 ,
DOC_BASNET=500,DOC_MTOIVA=500 ,DOC_MTOEXE=500 ,


UPDATE DPDOCPROAUT SET AUP_MONTO=500

UPDATE DPDOCPROCTA SET CCD_MONTO=500, CCD_TOTAL=500

UPDATE DPDOCPROGASTO SET DCG_MONTO=500, DCG_MTODIV=500, DCG_VALDIV=500

UPDATE DOCPROGASXINV SET DXI_MONTO=500


UPDATE DPDOCPROISLR SET RXP_MTOBAS='500', RXP_MTOSUJ='500', RXP_MTODED='500', RXP_MTORET='500'


UPDATE DPDOCPROIVA SET IXD_MTOBAS=500, IXD_MTOIVA=500


UPDATE DPDOCPROPROG SET PLP_MONTO='500'


UPDATE DPEJECUCIONPROD SET EOP_COSTO=100, EOP_VALAGR=500

UPDATE DPEJECUCIONVALAGRE SET EVA_MONTO=100, EVA_TOTAL=500

UPDATE DPEXPENDIENTE SET EXP_MONTO=500

UPDATE DPGIROSCLI SET GIR_GASTO=100, GIR_MTOINT=100

UPDATE DPGUIACARGA SET GTR_MTOFON=100


UPDATE DPGUIATRANSP SET GTR_VALOR=100, GTR_VIATIC=100

UPDATE DPHISMON SET HMN_VALOR=100


UPDATE DPINV SET INV_COSADQ=100, INV_COSFOB=100, INV_COSMER=100, INV_PVPORG=100



UPDATE DPINVALQUILER SET ALQ_DEPOSI=100

UPDATE DPINVCAPAPRECIOS SET CAP_PRECIO=100

UPDATE DPINVCLASIFICA SET TIP_INCIDE=100



UPDATE DPINVPLAABAST SET  IPA_COSTO=100

UPDATE DPINVPROMOCION SET PRO_PRECIO=100






UPDATE DPLIBINVDET SET DLI_COSANT='500', DLI_COSCOM='500', DLI_COSENT='500', DLI_COSINV='500', DLI_COSSAL='500', DLI_COSVTA='500', DLI_COSPRO='500', DLI_INPC='500', DLI_IPC='500'



UPDATE DPLIBINVDETCAPAS SET CAP_ACTINPC=100, CAP_ACTIPC=100,CAP_INPC=100,CAP_IPC=100



UPDATE DPMOVCONTEO SET MDC_COSTO=100

UPDATE DPMOVINV SET MOV_COSTO=100, MOV_TOTAL=100, MOV_PRECIO=100, MOV_IMPOTR=100,
 MOV_MTOCOM=100, MOV_IMPORT=100, MOV_IMPPRO=100, MOV_EXPEND=100, MOV_BANDA=100,
 MOV_MTOCLA=100,


UPDATE DPMOINVCLASIF SET MCI_INCIDE=100,MCI_TOTAL=100

UPDATE DPMOVSERIAL SET MSR_PRECIO=100


UPDATE DPORDENPRODUCC SET ORP_COSMAT=100,ORP_COSVAA=100,


UPDATE DPPANELERP SET ERP_MONTO=100


UPDATE DPPARROQUIAS SET TARIFA=100


UPDATE DPPERSONAL SET PER_CUOTA=100,PER_MTOCOB


UPDATE DPPOSCOMANDA SET COM_PRECIO=100,COM_MTOIVA=100

UPDATE DPPOSUSUARIO SET RDP_MONTO=100


UPDATE DPPRECIOS SET PRE_PRECIOS=100

UPDATE DPPRECIOSHIS SET PRE_PRECIO=100
UPDATE DPPREMER SET MER_PRECIO=100


UPDATE DPPROVEEDOR SET PRO_LIMITE=100,PRO_MTOVEN=100


UPDATE DPPROVEEDORPROG SET PGC_MONTO=100, PGC_MTOBAS=100

UPDATE DPPROVEEDORSUC SET SDP_VIATIC=100


UPDATE DPRECIBOSCLI SET REC_VALCAM=100,REC_MONTO=100,REC_MTOIVA=100

UPDATE DPREGABASTEC SET RAB_MONTO=100

UPDATE DPTABCOMDET SET TCD_COL_A='500', TCD_COL_B='500', TCD_COL_C='500', TCD_COL_D='500'


UPDATE DPTICKET SET DOC_NETO=100, DOC_OTROS=100, DOC_IMPOTR=100,DOC_BASNET=100,DOC_MTOIVA=100,DOC_PAGEFE=100


UPDATE DPTICKETMOV SET MOV_TOTAL=100,MOV_PRECIO=100,
MOV_IMPOTR=100,MOV_IMPOTR,MOV_EXPEND,MOV_BANDA


UPDATE DPVALAGREGADO SET VAA_MONTO=100


UPDATE DPVENDEDOR SET VEN_CUOTA=100, VEN_MTOCOB=100


UPDATE EMPEDIDOMOV SET MPE_PRECIO=100, MPE_TOTAL=100












































UPDATE DPJ26 SET
DPJ_C_137=ROUND((DPJ_C_137/1000),2) ,
DPJ_C_144=ROUND((DPJ_C_144/1000),2) ,
DPJ_C_173=ROUND((DPJ_C_173/1000),2) ,
DPJ_C_174=ROUND((DPJ_C_174/1000),2) ,
DPJ_C_178=ROUND((DPJ_C_178/1000),2) ,
DPJ_C_170=ROUND((DPJ_C_170/1000),2) ,
DPJ_C_401=ROUND((DPJ_C_401/1000),2) ,
DPJ_C_406=ROUND((DPJ_C_406/1000),2) ,
DPJ_C_191=ROUND((DPJ_C_191/1000),2) ,
DPJ_C_192=ROUND((DPJ_C_192/1000),2) ,
DPJ_C_407=ROUND((DPJ_C_407/1000),2) ,
DPJ_C_408=ROUND((DPJ_C_408/1000),2) ,
DPJ_C_431=ROUND((DPJ_C_431/1000),2) ,
DPJ_C_185=ROUND((DPJ_C_185/1000),2) ,
DPJ_C_441=ROUND((DPJ_C_441/1000),2) ,
DPJ_C_442=ROUND((DPJ_C_442/1000),2) ,
DPJ_C_445=ROUND((DPJ_C_445/1000),2) ,
DPJ_C_446=ROUND((DPJ_C_446/1000),2) ,
DPJ_C_448=ROUND((DPJ_C_448/1000),2) ,
DPJ_C_455=ROUND((DPJ_C_455/1000),2) ,
DPJ_C_456=ROUND((DPJ_C_456/1000),2) ,
DPJ_C_295=ROUND((DPJ_C_295/1000),2) ,
DPJ_C_449=ROUND((DPJ_C_449/1000),2) ,
DPJ_C_450=ROUND((DPJ_C_450/1000),2) ,
DPJ_C_451=ROUND((DPJ_C_451/1000),2) ,
DPJ_C_452=ROUND((DPJ_C_452/1000),2) ,
DPJ_C_453=ROUND((DPJ_C_453/1000),2) ,
DPJ_C_454=ROUND((DPJ_C_454/1000),2) ,
DPJ_C_457=ROUND((DPJ_C_457/1000),2) ,
DPJ_C_458=ROUND((DPJ_C_458/1000),2) ,
DPJ_C_459=ROUND((DPJ_C_459/1000),2) ,
DPJ_C_484=ROUND((DPJ_C_484/1000),2) ,
DPJ_C_485=ROUND((DPJ_C_485/1000),2) ,
DPJ_C_494=ROUND((DPJ_C_494/1000),2) ,
DPJ_C_460=ROUND((DPJ_C_460/1000),2) ,
DPJ_C_461=ROUND((DPJ_C_461/1000),2) ,
DPJ_C_462=ROUND((DPJ_C_462/1000),2) ,
DPJ_C_463=ROUND((DPJ_C_463/1000),2) ,
DPJ_C_464=ROUND((DPJ_C_464/1000),2) ,
DPJ_C_469=ROUND((DPJ_C_469/1000),2) ,
DPJ_C_474=ROUND((DPJ_C_474/1000),2) ,
DPJ_C_479=ROUND((DPJ_C_479/1000),2) ,
DPJ_C_488=ROUND((DPJ_C_488/1000),2) ,
DPJ_C_490=ROUND((DPJ_C_490/1000),2) ,
DPJ_C_491=ROUND((DPJ_C_491/1000),2) ,
DPJ_C_492=ROUND((DPJ_C_492/1000),2) ,
DPJ_C_465=ROUND((DPJ_C_465/1000),2) ,
DPJ_C_466=ROUND((DPJ_C_466/1000),2) ,
DPJ_C_467=ROUND((DPJ_C_467/1000),2) ,
DPJ_C_468=ROUND((DPJ_C_468/1000),2) ,
DPJ_C_470=ROUND((DPJ_C_470/1000),2) ,
DPJ_C_471=ROUND((DPJ_C_471/1000),2) ,
DPJ_C_472=ROUND((DPJ_C_472/1000),2) ,
DPJ_C_473=ROUND((DPJ_C_473/1000),2) ,
DPJ_C_475=ROUND((DPJ_C_475/1000),2) ,
DPJ_C_476=ROUND((DPJ_C_476/1000),2) ,
DPJ_C_477=ROUND((DPJ_C_477/1000),2) ,
DPJ_C_478=ROUND((DPJ_C_478/1000),2) ,
DPJ_C_480=ROUND((DPJ_C_480/1000),2) ,
DPJ_C_481=ROUND((DPJ_C_481/1000),2) ,
DPJ_C_482=ROUND((DPJ_C_482/1000),2) ,
DPJ_C_483=ROUND((DPJ_C_483/1000),2) ,
DPJ_C_489=ROUND((DPJ_C_489/1000),2) ,
DPJ_C_189=ROUND((DPJ_C_189/1000),2) ,
DPJ_C_221=ROUND((DPJ_C_221/1000),2) ,
DPJ_C_230=ROUND((DPJ_C_230/1000),2) ,
DPJ_C_231=ROUND((DPJ_C_231/1000),2) ,
DPJ_C_233=ROUND((DPJ_C_233/1000),2) ,
DPJ_C_291=ROUND((DPJ_C_291/1000),2) ,
DPJ_C_290=ROUND((DPJ_C_290/1000),2) ,
DPJ_C_297=ROUND((DPJ_C_297/1000),2) ,
DPJ_C_211=ROUND((DPJ_C_211/1000),2) ,
DPJ_C_234=ROUND((DPJ_C_234/1000),2) ,
DPJ_C_866=ROUND((DPJ_C_866/1000),2) ,
DPJ_C_220=ROUND((DPJ_C_220/1000),2) ,
DPJ_C_242=ROUND((DPJ_C_242/1000),2) ,
DPJ_C_243=ROUND((DPJ_C_243/1000),2) ,
DPJ_C_244=ROUND((DPJ_C_244/1000),2) ,
DPJ_C_245=ROUND((DPJ_C_245/1000),2) ,
DPJ_C_241=ROUND((DPJ_C_241/1000),2) ,
DPJ_C_249=ROUND((DPJ_C_249/1000),2) ,
DPJ_C_355=ROUND((DPJ_C_355/1000),2) ,
DPJ_C_358=ROUND((DPJ_C_358/1000),2) ,
DPJ_C_311=ROUND((DPJ_C_311/1000),2) ,
DPJ_C_312=ROUND((DPJ_C_312/1000),2) ,
DPJ_C_313=ROUND((DPJ_C_313/1000),2) ,
DPJ_C_314=ROUND((DPJ_C_314/1000),2) ,
DPJ_C_315=ROUND((DPJ_C_315/1000),2) ,
DPJ_C_316=ROUND((DPJ_C_316/1000),2) ,
DPJ_C_317=ROUND((DPJ_C_317/1000),2) ,
DPJ_C_318=ROUND((DPJ_C_318/1000),2) ,
DPJ_C_319=ROUND((DPJ_C_319/1000),2) ,
DPJ_C_321=ROUND((DPJ_C_321/1000),2) ,
DPJ_C_322=ROUND((DPJ_C_322/1000),2) ,
DPJ_C_323=ROUND((DPJ_C_323/1000),2) ,
DPJ_C_324=ROUND((DPJ_C_324/1000),2) ,
DPJ_C_325=ROUND((DPJ_C_325/1000),2) ,
DPJ_C_326=ROUND((DPJ_C_326/1000),2) ,
DPJ_C_327=ROUND((DPJ_C_327/1000),2) ,
DPJ_C_328=ROUND((DPJ_C_328/1000),2) ,
DPJ_C_329=ROUND((DPJ_C_329/1000),2) ,
DPJ_C_330=ROUND((DPJ_C_330/1000),2) ,
DPJ_C_331=ROUND((DPJ_C_331/1000),2) ,
DPJ_C_332=ROUND((DPJ_C_332/1000),2) ,
DPJ_C_333=ROUND((DPJ_C_333/1000),2) ,
DPJ_C_334=ROUND((DPJ_C_334/1000),2) ,
DPJ_C_335=ROUND((DPJ_C_335/1000),2) ,
DPJ_C_336=ROUND((DPJ_C_336/1000),2) ,
DPJ_C_337=ROUND((DPJ_C_337/1000),2) ,
DPJ_C_338=ROUND((DPJ_C_338/1000),2) ,
DPJ_C_339=ROUND((DPJ_C_339/1000),2) ,
DPJ_C_340=ROUND((DPJ_C_340/1000),2) ,
DPJ_C_341=ROUND((DPJ_C_341/1000),2) ,
DPJ_C_342=ROUND((DPJ_C_342/1000),2) ,
DPJ_C_343=ROUND((DPJ_C_343/1000),2) ,
DPJ_C_344=ROUND((DPJ_C_344/1000),2) ,
DPJ_C_345=ROUND((DPJ_C_345/1000),2) ,
DPJ_C_346=ROUND((DPJ_C_346/1000),2) ,
DPJ_C_347=ROUND((DPJ_C_347/1000),2) ,
DPJ_C_348=ROUND((DPJ_C_348/1000),2) ,
DPJ_C_349=ROUND((DPJ_C_349/1000),2) ,
DPJ_C_350=ROUND((DPJ_C_350/1000),2) ,
DPJ_C_356=ROUND((DPJ_C_356/1000),2) ,
DPJ_C_90 =ROUND((DPJ_C_90 /1000),2) ,
DPJ_C_87 =ROUND((DPJ_C_87 /1000),2) ,
DPJ_C_357=ROUND((DPJ_C_357/1000),2) ,
DPJ_D_901=ROUND((DPJ_D_901/1000),2) ,
DPJ_D_902=ROUND((DPJ_D_902/1000),2) ,
DPJ_D_903=ROUND((DPJ_D_903/1000),2) ,
DPJ_D_904=ROUND((DPJ_D_904/1000),2) ,
DPJ_D_912=ROUND((DPJ_D_912/1000),2) ,
DPJ_D_913=ROUND((DPJ_D_913/1000),2) ,
DPJ_D_914=ROUND((DPJ_D_914/1000),2) ,
DPJ_D_915=ROUND((DPJ_D_915/1000),2) ,
DPJ_D_916=ROUND((DPJ_D_916/1000),2) ,
DPJ_D_921=ROUND((DPJ_D_921/1000),2) ,
DPJ_D_922=ROUND((DPJ_D_922/1000),2) ,
DPJ_D_923=ROUND((DPJ_D_923/1000),2) ,
DPJ_D_924=ROUND((DPJ_D_924/1000),2) ,
DPJ_D_932=ROUND((DPJ_D_932/1000),2) ,
DPJ_D_933=ROUND((DPJ_D_933/1000),2) ,
DPJ_D_934=ROUND((DPJ_D_934/1000),2) ,
DPJ_D_935=ROUND((DPJ_D_935/1000),2) ,
DPJ_D_936=ROUND((DPJ_D_936/1000),2) ,
DPJ_D_943=ROUND((DPJ_D_943/1000),2) ,
DPJ_D_944=ROUND((DPJ_D_944/1000),2) ,
DPJ_D_945=ROUND((DPJ_D_945/1000),2) ,
DPJ_D_954=ROUND((DPJ_D_954/1000),2) ,
DPJ_D_955=ROUND((DPJ_D_955/1000),2) ,
DPJ_D_956=ROUND((DPJ_D_956/1000),2) ,
DPJ_D_957=ROUND((DPJ_D_957/1000),2) ,
DPJ_D_968=ROUND((DPJ_D_968/1000),2) ,
DPJ_E_701=ROUND((DPJ_E_701/1000),2) ,
DPJ_E_702=ROUND((DPJ_E_702/1000),2) ,
DPJ_E_703=ROUND((DPJ_E_703/1000),2) ,
DPJ_E_704=ROUND((DPJ_E_704/1000),2) ,
DPJ_E_705=ROUND((DPJ_E_705/1000),2) ,
DPJ_E_706=ROUND((DPJ_E_706/1000),2) ,
DPJ_E_799=ROUND((DPJ_E_799/1000),2) ,
DPJ_E_707=ROUND((DPJ_E_707/1000),2) ,
DPJ_E_602=ROUND((DPJ_E_602/1000),2) ,
DPJ_E_708=ROUND((DPJ_E_708/1000),2) ,
DPJ_E_709=ROUND((DPJ_E_709/1000),2) ,
DPJ_E_764=ROUND((DPJ_E_764/1000),2) ,
DPJ_E_970=ROUND((DPJ_E_970/1000),2) ,
DPJ_E_710=ROUND((DPJ_E_710/1000),2) ,
DPJ_E_711=ROUND((DPJ_E_711/1000),2) ,
DPJ_E_712=ROUND((DPJ_E_712/1000),2) ,
DPJ_E_713=ROUND((DPJ_E_713/1000),2) ,
DPJ_E_714=ROUND((DPJ_E_714/1000),2) ,
DPJ_E_715=ROUND((DPJ_E_715/1000),2) ,
DPJ_E_716=ROUND((DPJ_E_716/1000),2) ,
DPJ_E_717=ROUND((DPJ_E_717/1000),2) ,
DPJ_E_718=ROUND((DPJ_E_718/1000),2) ,
DPJ_E_719=ROUND((DPJ_E_719/1000),2) ,
DPJ_E_720=ROUND((DPJ_E_720/1000),2) ,
DPJ_E_721=ROUND((DPJ_E_721/1000),2) ,
DPJ_E_722=ROUND((DPJ_E_722/1000),2) ,
DPJ_E_723=ROUND((DPJ_E_723/1000),2) ,
DPJ_E_724=ROUND((DPJ_E_724/1000),2) ,
DPJ_E_725=ROUND((DPJ_E_725/1000),2) ,
DPJ_E_726=ROUND((DPJ_E_726/1000),2) ,
DPJ_E_727=ROUND((DPJ_E_727/1000),2) ,
DPJ_E_728=ROUND((DPJ_E_728/1000),2) ,
DPJ_E_729=ROUND((DPJ_E_729/1000),2) ,
DPJ_E_730=ROUND((DPJ_E_730/1000),2) ,
DPJ_E_731=ROUND((DPJ_E_731/1000),2) ,
DPJ_E_732=ROUND((DPJ_E_732/1000),2) ,
DPJ_E_733=ROUND((DPJ_E_733/1000),2) ,
DPJ_E_971=ROUND((DPJ_E_971/1000),2) ,
DPJ_E_734=ROUND((DPJ_E_734/1000),2) ,
DPJ_E_735=ROUND((DPJ_E_735/1000),2) ,
DPJ_E_736=ROUND((DPJ_E_736/1000),2) ,
DPJ_E_737=ROUND((DPJ_E_737/1000),2) ,
DPJ_E_738=ROUND((DPJ_E_738/1000),2) ,
DPJ_E_739=ROUND((DPJ_E_739/1000),2) ,
DPJ_E_740=ROUND((DPJ_E_740/1000),2) ,
DPJ_E_741=ROUND((DPJ_E_741/1000),2) ,
DPJ_E_776=ROUND((DPJ_E_776/1000),2) ,
DPJ_E_697=ROUND((DPJ_E_697/1000),2) ,
DPJ_E_698=ROUND((DPJ_E_698/1000),2) ,
DPJ_E_742=ROUND((DPJ_E_742/1000),2) ,
DPJ_E_972=ROUND((DPJ_E_972/1000),2) ,
DPJ_E_743=ROUND((DPJ_E_743/1000),2) ,
DPJ_E_744=ROUND((DPJ_E_744/1000),2) ,
DPJ_E_745=ROUND((DPJ_E_745/1000),2) ,
DPJ_E_746=ROUND((DPJ_E_746/1000),2) ,
DPJ_E_747=ROUND((DPJ_E_747/1000),2) ,
DPJ_E_748=ROUND((DPJ_E_748/1000),2) ,
DPJ_E_749=ROUND((DPJ_E_749/1000),2) ,
DPJ_E_750=ROUND((DPJ_E_750/1000),2) ,
DPJ_E_751=ROUND((DPJ_E_751/1000),2) ,
DPJ_E_752=ROUND((DPJ_E_752/1000),2) ,
DPJ_E_753=ROUND((DPJ_E_753/1000),2) ,
DPJ_E_754=ROUND((DPJ_E_754/1000),2) ,
DPJ_E_756=ROUND((DPJ_E_756/1000),2) ,
DPJ_E_757=ROUND((DPJ_E_757/1000),2) ,
DPJ_E_758=ROUND((DPJ_E_758/1000),2) ,
DPJ_E_973=ROUND((DPJ_E_973/1000),2) ,
DPJ_E_759=ROUND((DPJ_E_759/1000),2) ,
DPJ_E_760=ROUND((DPJ_E_760/1000),2) ,
DPJ_E_761=ROUND((DPJ_E_761/1000),2) ,
DPJ_E_762=ROUND((DPJ_E_762/1000),2) ,
DPJ_72E_764=ROUND((DPJ_72E_764/1000),2) ,
DPJ_E_974=ROUND((DPJ_E_974/1000),2) ,
DPJ_E_763=ROUND((DPJ_E_763/1000),2) ,
DPJ_F_780=ROUND((DPJ_F_780/1000),2) ,
DPJ_F_781=ROUND((DPJ_F_781/1000),2) ,
DPJ_F_782=ROUND((DPJ_F_782/1000),2) ,
DPJ_F_785=ROUND((DPJ_F_785/1000),2) ,
DPJ_F_786=ROUND((DPJ_F_786/1000),2) ,
DPJ_F_787=ROUND((DPJ_F_787/1000),2) ,
DPJ_F_788=ROUND((DPJ_F_788/1000),2) ,
DPJ_G_190=ROUND((DPJ_G_190/1000),2) ,
DPJ_G_155=ROUND((DPJ_G_155/1000),2) ,
DPJ_G_156=ROUND((DPJ_G_156/1000),2) ,
DPJ_G_196=ROUND((DPJ_G_196/1000),2) ,
DPJ_G_157=ROUND((DPJ_G_157/1000),2) ,
DPJ_G_158=ROUND((DPJ_G_158/1000),2) ,
DPJ_G_197=ROUND((DPJ_G_197/1000),2) ,
DPJ_G_168=ROUND((DPJ_G_168/1000),2) ,
DPJ_G_169=ROUND((DPJ_G_169/1000),2) ,
DPJ_G_193=ROUND((DPJ_G_193/1000),2) ,
DPJ_G_194=ROUND((DPJ_G_194/1000),2) ,
DPJ_G_160=ROUND((DPJ_G_160/1000),2) ,
DPJ_G_166=ROUND((DPJ_G_166/1000),2) ,
DPJ_G_177=ROUND((DPJ_G_177/1000),2) ,
DPJ_G_161=ROUND((DPJ_G_161/1000),2) ,
DPJ_G_171=ROUND((DPJ_G_171/1000),2) ,
DPJ_G_179=ROUND((DPJ_G_179/1000),2) ,
DPJ_G_162=ROUND((DPJ_G_162/1000),2) ,
DPJ_G_172=ROUND((DPJ_G_172/1000),2) ,
DPJ_G_180=ROUND((DPJ_G_180/1000),2) ,
DPJ_G_191=ROUND((DPJ_G_191/1000),2) ,
DPJ_G_192=ROUND((DPJ_G_192/1000),2) ,
DPJ_H_861=ROUND((DPJ_H_861/1000),2) ,
DPJ_H_862=ROUND((DPJ_H_862/1000),2) ,
DPJ_H_863=ROUND((DPJ_H_863/1000),2) ,
DPJ_H_864=ROUND((DPJ_H_864/1000),2) ,
DPJ_H_870=ROUND((DPJ_H_870/1000),2) ,
DPJ_I_167=ROUND((DPJ_I_167/1000),2) ,
DPJ_I_212=ROUND((DPJ_I_212/1000),2) ,
DPJ_I_165=ROUND((DPJ_I_165/1000),2) ,
DPJ_I_213=ROUND((DPJ_I_213/1000),2) ,
DPJ_I_166=ROUND((DPJ_I_166/1000),2) ,
DPJ_I_214=ROUND((DPJ_I_214/1000),2) ,
DPJ_I_242=ROUND((DPJ_I_242/1000),2) ,
DPJ_J_247=ROUND((DPJ_J_247/1000),2) ,
DPJ_J_248=ROUND((DPJ_J_248/1000),2) ,
DPJ_J_246=ROUND((DPJ_J_246/1000),2) ,
DPJ_J_250=ROUND((DPJ_J_250/1000),2) ,
DPJ_J_252=ROUND((DPJ_J_252/1000),2) ,
DPJ_J_241=ROUND((DPJ_J_241/1000),2) ,
DPJ_K_790=ROUND((DPJ_K_790/1000),2) ,
DPJ_K_791=ROUND((DPJ_K_791/1000),2) ,
DPJ_K_792=ROUND((DPJ_K_792/1000),2) ;






UPDATE DPLIQFORMA28 SET
F28_181=ROUND((F28_181/1000),2) ,
F28_182=ROUND((F28_182/1000),2) ,
F28_173=ROUND((F28_173/1000),2) ,
F28_174=ROUND((F28_174/1000),2) ,
F28_196=ROUND((F28_196/1000),2) ,
F28_197=ROUND((F28_197/1000),2) ,
F28_401=ROUND((F28_401/1000),2) ,
F28_406=ROUND((F28_406/1000),2) ,
F28_431=ROUND((F28_431/1000),2) ,
F28_185=ROUND((F28_185/1000),2) ,
F28_186=ROUND((F28_186/1000),2) ,
F28_198=ROUND((F28_198/1000),2) ,
F28_199=ROUND((F28_199/1000),2) ,
F28_187=ROUND((F28_187/1000),2) ,
F28_188=ROUND((F28_188/1000),2) ,
F28_183=ROUND((F28_183/1000),2) ,
F28_184=ROUND((F28_184/1000),2) ,
F28_189=ROUND((F28_189/1000),2) ,
F28_221=ROUND((F28_221/1000),2) ,
F28_280=ROUND((F28_280/1000),2) ,
F28_233=ROUND((F28_233/1000),2) ,
F28_291=ROUND((F28_291/1000),2) ,
F28_290=ROUND((F28_290/1000),2) ,
F28_297=ROUND((F28_297/1000),2) ,
F28_242=ROUND((F28_242/1000),2) ,
F28_243=ROUND((F28_243/1000),2) ,
F28_244=ROUND((F28_244/1000),2) ,
F28_245=ROUND((F28_245/1000),2) ,
F28_241=ROUND((F28_241/1000),2) ,
F28_249=ROUND((F28_249/1000),2) ,
F28_355=ROUND((F28_355/1000),2) ,
F28_311=ROUND((F28_311/1000),2) ,
F28_312=ROUND((F28_312/1000),2) ,
F28_313=ROUND((F28_313/1000),2) ,
F28_314=ROUND((F28_314/1000),2) ,
F28_315=ROUND((F28_315/1000),2) ,
F28_316=ROUND((F28_316/1000),2) ,
F28_317=ROUND((F28_317/1000),2) ,
F28_318=ROUND((F28_318/1000),2) ,
F28_319=ROUND((F28_319/1000),2) ,
F28_321=ROUND((F28_321/1000),2) ,
F28_322=ROUND((F28_322/1000),2) ,
F28_323=ROUND((F28_323/1000),2) ,
F28_324=ROUND((F28_324/1000),2) ,
F28_325=ROUND((F28_325/1000),2) ,
F28_326=ROUND((F28_326/1000),2) ,
F28_327=ROUND((F28_327/1000),2) ,
F28_328=ROUND((F28_328/1000),2) ,
F28_329=ROUND((F28_329/1000),2) ,
F28_330=ROUND((F28_330/1000),2) ,
F28_331=ROUND((F28_331/1000),2) ,
F28_332=ROUND((F28_332/1000),2) ,
F28_333=ROUND((F28_333/1000),2) ,
F28_334=ROUND((F28_334/1000),2) ,
F28_335=ROUND((F28_335/1000),2) ,
F28_336=ROUND((F28_336/1000),2) ,
F28_337=ROUND((F28_337/1000),2) ,
F28_338=ROUND((F28_338/1000),2) ,
F28_339=ROUND((F28_339/1000),2) ,
F28_340=ROUND((F28_340/1000),2) ,
F28_341=ROUND((F28_341/1000),2) ,
F28_342=ROUND((F28_342/1000),2) ,
F28_343=ROUND((F28_343/1000),2) ,
F28_344=ROUND((F28_344/1000),2) ,
F28_345=ROUND((F28_345/1000),2) ,
F28_356=ROUND((F28_356/1000),2) ,
F28_90=ROUND((F28_90/1000),2) ,
F28_87=ROUND((F28_87/1000),2) ;




UPDATE DPLIQFORMA30 SET
F30_312=ROUND((F30_312/1000),2) ,
F30_322=ROUND((F30_322/1000),2) ,
F30_313=ROUND((F30_313/1000),2) ,
F30_323=ROUND((F30_323/1000),2) ,
F30_332=ROUND((F30_332/1000),2) ,
F30_342=ROUND((F30_342/1000),2) ,
F30_333=ROUND((F30_333/1000),2) ,
F30_343=ROUND((F30_343/1000),2) ,
F30_442=ROUND((F30_442/1000),2) ,
F30_452=ROUND((F30_452/1000),2) ,
F30_443=ROUND((F30_443/1000),2) ,
F30_453=ROUND((F30_453/1000),2) ,
F30_911=ROUND((F30_911/1000),2) ,
F30_912=ROUND((F30_912/1000),2) ,
F30_40=ROUND((F30_40/1000),2) ,
F30_41=ROUND((F30_41/1000),2) ,
F30_42=ROUND((F30_42/1000),2) ,
F30_43=ROUND((F30_43/1000),2) ,
F30_46=ROUND((F30_46/1000),2) ,
F30_47=ROUND((F30_47/1000),2) ,
F30_48=ROUND((F30_48/1000),2) ,
F30_49=ROUND((F30_49/1000),2) ,
F30_30=ROUND((F30_30/1000),2) ,
F30_31=ROUND((F30_31/1000),2) ,
F30_32=ROUND((F30_32/1000),2) ,
F30_33=ROUND((F30_33/1000),2) ,
F30_34=ROUND((F30_34/1000),2) ,
F30_35=ROUND((F30_35/1000),2) ,
F30_36=ROUND((F30_36/1000),2) ,
F30_37=ROUND((F30_37/1000),2) ,
F30_20=ROUND((F30_20/1000),2) ,
F30_38=ROUND((F30_38/1000),2) ,
F30_39=ROUND((F30_39/1000),2) ,
F30_50=ROUND((F30_50/1000),2) ,
F30_22=ROUND((F30_22/1000),2) ,
F30_51=ROUND((F30_51/1000),2) ,
F30_24=ROUND((F30_24/1000),2) ,
F30_52=ROUND((F30_52/1000),2) ,
F30_53=ROUND((F30_53/1000),2) ,
F30_60=ROUND((F30_60/1000),2) ,
F30_54=ROUND((F30_54/1000),2) ,
F30_55=ROUND((F30_55/1000),2) ,
F30_56=ROUND((F30_56/1000),2) ,
F30_57=ROUND((F30_57/1000),2) ,
F30_58=ROUND((F30_58/1000),2) ,
F30_61=ROUND((F30_61/1000),2) ,
F30_62=ROUND((F30_62/1000),2) ,
F30_65=ROUND((F30_65/1000),2) ,
F30_90=ROUND((F30_90/1000),2) ,
F30_80=ROUND((F30_80/1000),2) ,
F30_70=ROUND((F30_70/1000),2) ,
F30_21=ROUND((F30_21/1000),2) ,
F30_81=ROUND((F30_81/1000),2) ,
F30_76=ROUND((F30_76/1000),2) ,
F30_77=ROUND((F30_77/1000),2) ,
F30_69=ROUND((F30_69/1000),2) ,
F30_67=ROUND((F30_67/1000),2) ,
F30_68=ROUND((F30_68/1000),2) ,
F30_75=ROUND((F30_75/1000),2) ,
F30_82=ROUND((F30_82/1000),2) ,
F30_78=ROUND((F30_78/1000),2) ,
F30_66=ROUND((F30_66/1000),2) ,
F30_72=ROUND((F30_72/1000),2) ,
F30_73=ROUND((F30_73/1000),2) ,
F30_74=ROUND((F30_74/1000),2) ,
F30_71=ROUND((F30_71/1000),2) ;
