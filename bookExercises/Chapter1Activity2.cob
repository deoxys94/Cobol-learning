       identification division.
       program-id. inversion.
       author. Aldair.
      
       environment division.
       input-output section.
      
       data division.
       file section.
       working-storage section.
       
       01  valores-entrada-usuario.
           05 seleccion-usuario       pic 9 value 1.
           05 monto-inversion         pic 9(5).
           05 periodo-tiempo          pic 99.
           05 tasa-interes-anual      pic 99v9.
       01  campos-trabajo.            
           05 valor-futuro            pic 9(7)v99.
           05 contador-tiempo         pic 999.
           05 valor-futuro-editado    pic z,zzz,zzz.99.

       procedure division.
       
       000-ejecutar-programa.

           perform 100-calcular-inversion-futura
               until seleccion-usuario = 2.
           display "Programa terminado.".
           stop run.

       100-calcular-inversion-futura.
           display "------Calcular inversion------".
           display "1. Calcular inversion a futuro".
           display "2. Finalizar programa".
           display ">".
           accept seleccion-usuario.
           display "------------------------------".
           if seleccion-usuario = 1
               perform 110-capturar-datos-usuario
               move monto-inversion to valor-futuro
               move 1 to contador-tiempo
               perform 120-calcular-siguiente-fv
                   until contador-tiempo > periodo-tiempo
               move valor-futuro to valor-futuro-editado
               display "El valor futuro es: " valor-futuro-editado.

       110-capturar-datos-usuario.
           display "Ingresa el monto de inversion".
           display ">".
           accept monto-inversion.
           display "Ingresa el tiempo de la inversion (anios)".
           display ">".
           accept periodo-tiempo.
           display "Ingresa el interes anual (xx.x)".
           display ">".
           accept tasa-interes-anual.
       
       120-calcular-siguiente-fv.
           compute valor-futuro rounded =
               valor-futuro +
                   (valor-futuro * tasa-interes-anual / 100).
           add 1 to contador-tiempo.
