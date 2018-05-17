# Reconversion para Bravo y Cia
# v0.1


# Parte de la Reconverion en la Version de Produccion
# ADMCONFIG.TARIFAF28
# ADMCONFIG.TARIFASRET
# ADMCONFIG.DPUNIDADTRIB


#Limpieza de Datos
TRUNCATE ADMCONFIG.DPAUDITORIA;
TRUNCATE BRAVOCIA_TEMP.DPAUDITAELIMOD;
TRUNCATE BRAVOCIA_TEMP.DPAUDITOR;
TRUNCATE BRAVOCIA_TEMP.DPFILEEMP;
TRUNCATE BRAVOCIA_TEMP.DPFILEEMPMAIN;




UPDATE BRAVOCIA_TEMP.DPASIENTOCENCOS SET ACC_MONTO=ROUND((ACC_MONTO/1000),2)   ;

UPDATE BRAVOCIA_TEMP.DPASIENTOS      SET MOC_MONTO=ROUND((MOC_MONTO/1000),2)   ;

UPDATE BRAVOCIA_TEMP.DPCAJAMOV       SET CAJ_MONTO=ROUND((CAJ_MONTO/1000),2)   ;

UPDATE BRAVOCIA_TEMP.DPCBTEPAGO      SET PAG_MONTO=ROUND((PAG_MONTO/1000),2)   ;

UPDATE BRAVOCIA_TEMP.DPCLIENTES      SET CLI_DESCUE=ROUND((CLI_DESCUE/1000),2) , 
                                         CLI_LIMITE=ROUND((CLI_LIMITE/1000),2) ;

UPDATE BRAVOCIA_TEMP.DPCOBDEP        SET COB_MONTO=ROUND((COB_MONTO/1000),2)   ;

UPDATE BRAVOCIA_TEMP.DPCOMHIS        SET COM_MTOCOB=ROUND((COM_MTOCOB/1000),2) , 
                                         COM_MTOCOM=ROUND((COM_MTOCOM/1000),2) ;
UPDATE BRAVOCIA_TEMP.DPCTABANCOCON   SET MOB_MONTO=ROUND((MOB_MONTO/1000),2)   ;

UPDATE BRAVOCIA_TEMP.DPCTABANCOMOV   SET MOB_MONTO=ROUND((MOB_MONTO/1000),2)   , 
                                         MOB_MTOIDB=ROUND((MOB_MTOIDB/1000),2) ;

UPDATE BRAVOCIA_TEMP.DPDOCCLI        SET DOC_NETO=ROUND((DOC_NETO/1000),2)     , 
                                         DOC_BASNET=ROUND((DOC_BASNET/1000),2) , 
                                         DOC_MTOIVA=ROUND((DOC_MTOIVA/1000),2) ,
                                         DOC_RECARG=ROUND((DOC_RECARG/1000),2) , 
                                         DOC_OTROS=ROUND((DOC_OTROS/1000),2)   , 
                                         DOC_IMPOTR=ROUND((DOC_IMPOTR/1000),2) ;

UPDATE BRAVOCIA_TEMP.DPDOCCLICTA     SET CCD_MONTO=ROUND((CCD_MONTO/1000),2)   , 
                                         CCD_TOTAL=ROUND((CCD_TOTAL/1000),2)   ;

UPDATE BRAVOCIA_TEMP.DPDOCCLIISLR    SET RXC_MTOBAS=ROUND((RXC_MTOBAS/1000),2) , 
                                         RXC_MTOSUJ=ROUND((RXC_MTOSUJ/1000),2) ,
                                         RXC_MTORET=ROUND((RXC_MTORET/1000),2) ;

UPDATE BRAVOCIA_TEMP.DPDOCPRO        SET DOC_NETO=ROUND((DOC_NETO/1000),2)     , 
                                         DOC_OTROS=ROUND((DOC_OTROS/1000),2)   ,
                                         DOC_IMPOTR=ROUND((DOC_IMPOTR/1000),2) ,
                                         DOC_BASNET=ROUND((DOC_BASNET/1000),2) ,
                                         DOC_MTOIVA=ROUND((DOC_MTOIVA/1000),2) ;

UPDATE BRAVOCIA_TEMP.DPDOCPROCTA     SET CCD_MONTO=ROUND((CCD_MONTO/1000),2)   , 
                                         CCD_TOTAL=ROUND((CCD_TOTAL/1000),2)   ;

UPDATE BRAVOCIA_TEMP.DPDOCPROISLR    SET RXP_MTOBAS=ROUND((RXP_MTOBAS/1000),2) , 
                                         RXP_MTOSUJ=ROUND((RXP_MTOSUJ/1000),2) ,
                                         RXP_MTORET=ROUND((RXP_MTORET/1000),2) ;

UPDATE BRAVOCIA_TEMP.DPINV           SET INV_COSADQ=ROUND((INV_COSADQ/1000),2) , 
                                         INV_COSMER=ROUND((INV_COSMER/1000),2) ,
                                         INV_COSFOB=ROUND((INV_COSFOB/1000),2) ,
                                         INV_IMPPVP=ROUND((INV_IMPPVP/1000),2) ,
                                         INV_IMPPRO=ROUND((INV_IMPPRO/1000),2) ,
                                         INV_IMPEXP=ROUND((INV_IMPEXP/1000),2) ,
                                         INV_IMPBAN=ROUND((INV_IMPBAN/1000),2) ,
                                         INV_PREPER=ROUND((INV_PREPER/1000),2) ,
                                         INV_IMPTRA=ROUND((INV_IMPTRA/1000),2) ;

UPDATE BRAVOCIA_TEMP.DPMOVINV        SET MOV_COSTO=ROUND((MOV_COSTO/1000),2)   , 
                                         MOV_TOTAL=ROUND((MOV_TOTAL/1000),2)   ,
                                         MOV_PRECIO=ROUND((MOV_PRECIO/1000),2) ,
                                         MOV_IMPOTR=ROUND((MOV_IMPOTR/1000),2) ,
                                         MOV_IMPORT=ROUND((MOV_IMPORT/1000),2) ,
                                         MOV_IMPPRO=ROUND((MOV_IMPPRO/1000),2) ,
                                         MOV_EXPEND=ROUND((MOV_EXPEND/1000),2) ,
                                         MOV_BANDA=ROUND((MOV_BANDA/1000),2) ,
                                         MOV_BASPER=ROUND((MOV_BASPER/1000),2) ,
                                         MOV_IMPTRA=ROUND((MOV_IMPTRA/1000),2) ;

UPDATE BRAVOCIA_TEMP.DPPRECIOS       SET PRE_PRECIO=ROUND((PRE_PRECIO/1000),2) ; 

UPDATE BRAVOCIA_TEMP.DPRECIBOSCLI    SET REC_MONTO=ROUND((REC_MONTO/1000),2) , 
                                         REC_MTOIVA=ROUND((REC_MTOIVA/1000),2) ;

UPDATE BRAVOCIA_TEMP.DPCAJAINST      SET ICJ_CODMON='Bs'                       ;

DELETE FROM `BRAVOCIA_TEMP`.`DPTABMON` WHERE  `MON_CODIGO`='BsF'               ;