       IDENTIFICATION DIVISION.
       PROGRAM-ID. CALCIMPUESTO.
       AUTHOR. ALDAIR.
       DATE-WRITTEN.  18/05/2021.
       DATE-COMPILED. 18/05/2021.
      * 
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
      * 
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  SWITCH-CERRAR               PIC X VALUE 'N'.
       77  MONTO-VENTA                 PIC 9(5)V99.
       77  IMPUESTO-VENTAS             PIC Z,ZZZ.99. 
      *
       PROCEDURE DIVISION.
      *
       000-CALCULAR-TODO.
      *
           PERFORM 100-CALCULAR-IMPUESTO
               UNTIL SWITCH-CERRAR = 'Y'.
           DISPLAY 'PROGRAMA FINALIZADO'.
           STOP RUN.
      *
       100-CALCULAR-IMPUESTO.
           DISPLAY '-------------------------'.
           DISPLAY 'INGRESE EL MONTO DE VENTA PARA CALCULAR EL IVA'.
           DISPLAY '(PARA SALIR, INGRESE 0 COMO MONTO DE VENTA)'.
           DISPLAY '>'.
           ACCEPT MONTO-VENTA.
           IF MONTO-VENTA = ZERO
              MOVE 'Y' TO SWITCH-CERRAR
           ELSE   
              COMPUTE IMPUESTO-VENTAS ROUNDED =
                  MONTO-VENTA * 0.17
              DISPLAY "EL IMPUESTO ES: " IMPUESTO-VENTAS.
              
