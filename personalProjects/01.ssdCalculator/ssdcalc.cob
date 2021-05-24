       IDENTIFICATION DIVISION.
       PROGRAM-ID. SSDCALC.
       AUTHOR. ALDAIR.
      * 
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
      * 
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  SELECCION-USUARIO           PIC 9 VALUE 1.
       77  USO-DIARIO-SSD              PIC 9(8)V999.
       77  DWPD                        PIC 9(8)V999.
       77  TBW-USUARIO                 PIC 9(5).
       77  GARANTIA-ANIOS              PIC 9(2).
       77  CAPACIDAD-UNIDAD            PIC 9(5).
      *
       PROCEDURE DIVISION.
      *
       000-INICIO-PROGRAMA.
           PERFORM 100-MENU-PRINCIPAL
             UNTIL SELECCION-USUARIO = 0.
           STOP RUN.
      *
       100-MENU-PRINCIPAL.
           DISPLAY "------CALCULADORA------".
           DISPLAY "1. CALCULAR VIDA UTIL DE UN SSD".
           DISPLAY "0. SALIR".
           DISPLAY ">".
           ACCEPT SELECCION-USUARIO.
           DISPLAY "------------------------------".
           IF SELECCION-USUARIO = 1
             PERFORM 110-CALCULO-SSD.
           
           IF SELECCION-USUARIO > 1
             DISPLAY "SELECCION NO VALIDA"
             MOVE 1 TO SELECCION-USUARIO.
      * 
       110-CALCULO-SSD.
           DISPLAY " ".
           DISPLAY " ".
           DISPLAY " ".
           DISPLAY " ".
           DISPLAY " ".
           DISPLAY "INGRESA LA CAPACIDAD DE LA UNIDAD (GB): ".
           ACCEPT CAPACIDAD-UNIDAD.
           DISPLAY "INGRESA LOS TBW DE LA UNIDAD: ".
           ACCEPT TBW-USUARIO.
           DISPLAY "INGRESA LOS ANIOS DE GARANTIA DE LA UNIDAD: ".
           ACCEPT GARANTIA-ANIOS.
           DISPLAY " ".
           DISPLAY " ".
           DISPLAY "-----INFO. DE LA UNIDAD-----".
           COMPUTE DWPD = (TBW-USUARIO * 1000) / 
                   ( CAPACIDAD-UNIDAD * GARANTIA-ANIOS * 365 ).
           COMPUTE USO-DIARIO-SSD = DWPD * CAPACIDAD-UNIDAD.
           DISPLAY "ESCRITURAS A LA UNIDAD POR DIA (DWPD): " DWPD.
           DISPLAY "A DIARIO, SE PUEDEN ESCRIBIR " USO-DIARIO-SSD
                   " GB EN TU UNIDAD SSD.".
           DISPLAY "------------------------------".
           DISPLAY " ".
           DISPLAY " ".
           DISPLAY " ".
           DISPLAY " ".
           DISPLAY " ".
