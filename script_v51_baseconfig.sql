/*
Vaciar campos de auditoria y campos de registros de cambios.
Identificar la Base de Datos de Configuracion segun la Version: Ejm. "apconfig" - "admconfig" - "dpconfig51" 
*/

# SELECCIONAR LA BASE DE DATOS DE CONFIGURACION
USE APCONFIG;



TRUNCATE DPAUDELIMODCNF;
TRUNCATE DPAUDELIMODDIC;
TRUNCATE DPAUDITORIA;
TRUNCATE DPFILEAPLICA;
TRUNCATE DPFILES;
TRUNCATE DPINTREF;