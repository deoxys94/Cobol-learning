       IDENTIFICATION DIVISION.
       PROGRAM-ID. SERNUM.                           
       AUTHOR. ALDAIR.                                             
      *                                                            
       ENVIRONMENT DIVISION.                                       
       INPUT-OUTPUT SECTION.                                       
      *                                                            
       DATA DIVISION.                                              
       FILE SECTION.                                               
       WORKING-STORAGE SECTION.                                    
       77  SWITCH-DETENER             PIC X.                       
       77  CONTADOR-CICLOS            PIC 999 VALUE 0.            
       77  NUMERO-INPUT               PIC 999.                        
       77  ACUMULADO                  PIC 9(6).              
       77  PROMEDIO                   PIC (4)V99.            
      *                                                           
       PROCEDURE DIVISION.                                                
      *                                                                   
       000-INICIO-PROGRAMA.                                               
           PERFORM 100-MENU-PRINCIPAL                                     
             UNTIL SELECCION-USUARIO = 'N'.                                   
           STOP RUN.                                                          
      *                                                                       
       100-MENU-PRINCIPAL.                                                                 
           DISPLAY "------------------------------".                                                           
           DISPLAY "EJECUTAR PROGRAMA (S/N)?".                                                                   
           ACCEPT SELECCION-USUARIO.                                                                             
           DISPLAY "------------------------------".                                                             
           IF SELECCION-USUARIO = 'S'                                                                            
             PERFORM 110-SERIES-NUMERICAS.                                                                       
      *                                                                                                          
       110-SERIES-NUMERICAS.                                                                                     
           DISPLAY "INGRESA CUALQUIER NUMERO ENTRE EL 1 Y EL 999,".                                              
           DISPLAY "DESPUES DE INGRESAR EL NUMERO, PRESIONA ENTER.".                                             
           DISPLAY "CUANDO YA NO QUIERAS INGRESAR MAS NUMEROS, INGRESA".                                         
           DISPLAY "0 Y PULSA ENTER.".   
                                         
           PERFORM UNTIL NUMERO-INPUT = 0
               ACCEPT NUMERO-INPUT
               
                                                                                         