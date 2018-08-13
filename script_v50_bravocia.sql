# Reconversion para Bravo y Cia
# v2.0

# Parte de la Reconverion en la Version de Produccion
# ADMCONFIG.TARIFAF28
# ADMCONFIG.TARIFASRET
# ADMCONFIG.DPUNIDADTRIB

#Limpieza de Datos
TRUNCATE ADMCONFIG.DPAUDITORIA;
TRUNCATE BRAVOCIA_CLON.DPAUDITAELIMOD;
TRUNCATE BRAVOCIA_CLON.DPAUDITOR;
TRUNCATE BRAVOCIA_CLON.DPFILEEMP;
TRUNCATE BRAVOCIA_CLON.DPFILEEMPMAIN;


UPDATE BRAVOCIA_CLON.DPASIENTOCENCOS SET ACC_MONTO=ROUND((ACC_MONTO/100000),2)   ;
UPDATE BRAVOCIA_CLON.DPASIENTOS      SET MOC_MONTO=ROUND((MOC_MONTO/100000),2)   ;
UPDATE BRAVOCIA_CLON.DPCAJAMOV       SET CAJ_MONTO=ROUND((CAJ_MONTO/100000),2)   ;
UPDATE BRAVOCIA_CLON.DPCBTEPAGO      SET PAG_MONTO=ROUND((PAG_MONTO/100000),2)   ;
UPDATE BRAVOCIA_CLON.DPCLIENTES      SET CLI_DESCUE=ROUND((CLI_DESCUE/100000),2) , 
                                         CLI_LIMITE=ROUND((CLI_LIMITE/100000),2) ;
UPDATE BRAVOCIA_CLON.DPCOBDEP        SET COB_MONTO=ROUND((COB_MONTO/100000),2)   ;
UPDATE BRAVOCIA_CLON.DPCOMHIS        SET COM_MTOCOB=ROUND((COM_MTOCOB/100000),2) , 
                                         COM_MTOCOM=ROUND((COM_MTOCOM/100000),2) ;
UPDATE BRAVOCIA_CLON.DPCTABANCOCON   SET MOB_MONTO=ROUND((MOB_MONTO/100000),2)   ;
UPDATE BRAVOCIA_CLON.DPCTABANCOMOV   SET MOB_MONTO=ROUND((MOB_MONTO/100000),2)   , 
                                         MOB_MTOIDB=ROUND((MOB_MTOIDB/100000),2) ;
UPDATE BRAVOCIA_CLON.DPDOCCLI        SET DOC_NETO=ROUND((DOC_NETO/100000),2)     , 
                                         DOC_BASNET=ROUND((DOC_BASNET/100000),2) , 
                                         DOC_MTOIVA=ROUND((DOC_MTOIVA/100000),2) ,
                                         DOC_RECARG=ROUND((DOC_RECARG/100000),2) , 
                                         DOC_OTROS=ROUND((DOC_OTROS/100000),2)   , 
                                         DOC_IMPOTR=ROUND((DOC_IMPOTR/100000),2) ;
UPDATE BRAVOCIA_CLON.DPDOCCLICTA     SET CCD_MONTO=ROUND((CCD_MONTO/100000),2)   , 
                                         CCD_TOTAL=ROUND((CCD_TOTAL/100000),2)   ;
UPDATE BRAVOCIA_CLON.DPDOCCLIISLR    SET RXC_MTOBAS=ROUND((RXC_MTOBAS/100000),2) , 
                                         RXC_MTOSUJ=ROUND((RXC_MTOSUJ/100000),2) ,
                                         RXC_MTORET=ROUND((RXC_MTORET/100000),2) ;
UPDATE BRAVOCIA_CLON.DPDOCPRO        SET DOC_NETO=ROUND((DOC_NETO/100000),2)     , 
                                         DOC_OTROS=ROUND((DOC_OTROS/100000),2)   ,
                                         DOC_IMPOTR=ROUND((DOC_IMPOTR/100000),2) ,
                                         DOC_BASNET=ROUND((DOC_BASNET/100000),2) ,
                                         DOC_MTOIVA=ROUND((DOC_MTOIVA/100000),2) ;
UPDATE BRAVOCIA_CLON.DPDOCPROCTA     SET CCD_MONTO=ROUND((CCD_MONTO/100000),2)   , 
                                         CCD_TOTAL=ROUND((CCD_TOTAL/100000),2)   ;
UPDATE BRAVOCIA_CLON.DPDOCPROISLR    SET RXP_MTOBAS=ROUND((RXP_MTOBAS/100000),2) , 
                                         RXP_MTOSUJ=ROUND((RXP_MTOSUJ/100000),2) ,
                                         RXP_MTORET=ROUND((RXP_MTORET/100000),2) ;
UPDATE BRAVOCIA_CLON.DPINV           SET INV_COSADQ=ROUND((INV_COSADQ/100000),2) , 
                                         INV_COSMER=ROUND((INV_COSMER/100000),2) ,
                                         INV_COSFOB=ROUND((INV_COSFOB/100000),2) ,
                                         INV_IMPPVP=ROUND((INV_IMPPVP/100000),2) ,
                                         INV_IMPPRO=ROUND((INV_IMPPRO/100000),2) ,
                                         INV_IMPEXP=ROUND((INV_IMPEXP/100000),2) ,
                                         INV_IMPBAN=ROUND((INV_IMPBAN/100000),2) ,
                                         INV_PREPER=ROUND((INV_PREPER/100000),2) ,
                                         INV_IMPTRA=ROUND((INV_IMPTRA/100000),2) ;
UPDATE BRAVOCIA_CLON.DPMOVINV        SET MOV_COSTO=ROUND((MOV_COSTO/100000),2)   , 
                                         MOV_TOTAL=ROUND((MOV_TOTAL/100000),2)   ,
                                         MOV_PRECIO=ROUND((MOV_PRECIO/100000),2) ,
                                         MOV_IMPOTR=ROUND((MOV_IMPOTR/100000),2) ,
                                         MOV_IMPORT=ROUND((MOV_IMPORT/100000),2) ,
                                         MOV_IMPPRO=ROUND((MOV_IMPPRO/100000),2) ,
                                         MOV_EXPEND=ROUND((MOV_EXPEND/100000),2) ,
                                         MOV_BANDA=ROUND((MOV_BANDA/100000),2) ,
                                         MOV_BASPER=ROUND((MOV_BASPER/100000),2) ,
                                         MOV_IMPTRA=ROUND((MOV_IMPTRA/100000),2) ;
UPDATE BRAVOCIA_CLON.DPPRECIOS       SET PRE_PRECIO=ROUND((PRE_PRECIO/100000),2) ; 
UPDATE BRAVOCIA_CLON.DPRECIBOSCLI    SET REC_MONTO=ROUND((REC_MONTO/100000),2) , 
                                         REC_MTOIVA=ROUND((REC_MTOIVA/100000),2) ;
UPDATE BRAVOCIA_CLON.DPCAJAINST      SET ICJ_CODMON='Bs'                       ;
DELETE FROM `BRAVOCIA_CLON`.`DPTABMON` WHERE  `MON_CODIGO`='BsF'               ;