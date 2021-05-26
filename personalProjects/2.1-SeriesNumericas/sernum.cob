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
       77  SELECCION-USUARIO          PIC X.                       
       77  CONTADOR-CICLOS            PIC 999 VALUE 0.            
       77  NUMERO-INPUT               PIC 999 VALUE 1.                        
       77  ACUMULADO                  PIC 9(6).              
       77  PROMEDIO                   PIC 9(4)V99.            
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

               IF NUMERO-INPUT > 0
                  IF NUMERO-INPUT < 1000
                     COMPUTE ACUMULADO = ACUMULADO + NUMERO-INPUT
                     COMPUTE CONTADOR-CICLOS = CONTADOR-CICLOS + 1
                  ELSE
                     DISPLAY 'NUMERO NO ACEPTADO, INGRESA OTRO: '
                  END-IF
               END-IF
           END-PERFORM.

           COMPUTE PROMEDIO = ACUMULADO / CONTADOR-CICLOS.

           DISPLAY "------------------------------".                                                             
           DISPLAY "LA SUMA TOTAL DE LOS NUMEROS ES: " ACUMULADO.
           DISPLAY "EL PROMEDIO DE LOS NUMEROS ES: " PROMEDIO.
