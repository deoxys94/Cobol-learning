       IDENTIFICATION DIVISION.
       PROGRAM-ID. GPACALC.
       AUTHOR. ALDAIR.                        
      *                                          
       ENVIRONMENT DIVISION.                     
       INPUT-OUTPUT SECTION.                     
      *                                          
       DATA DIVISION.                            
       FILE SECTION.                             
       WORKING-STORAGE SECTION.                  
       77  SELECCION-USUARIO           PIC 9 VALUE 1.
       77  SEMESTER-GRADE-POINTS       PIC 9(2). 
       77  CREDITS-TAKEN               PIC 9(2). 
       77  GPA                         PIC 9(2)V99.
      *                                          
       PROCEDURE DIVISION.                       
      *                                          
       000-INICIO-PROGRAMA.                      
           PERFORM 100-MENU-PRINCIPAL            
             UNTIL SELECCION-USUARIO = 0.        
           STOP RUN.                             
      *                                          
       100-MENU-PRINCIPAL.                       
           DISPLAY "------GPA CALCULATOR------". 
           DISPLAY "1. Calculate GPA".
           DISPLAY "0. Exit".
           DISPLAY ">".      
           ACCEPT SELECCION-USUARIO.
           DISPLAY "------------------------------".
           IF SELECCION-USUARIO = 1
             PERFORM 110-CALCULAR-GPA.
                             
           IF SELECCION-USUARIO > 1
             DISPLAY "Invalid choice"
             MOVE 1 TO SELECCION-USUARIO.
      *                                              
       110-CALCULAR-GPA.                             
           DISPLAY " ".                              
           DISPLAY " ".                              
           DISPLAY " ".                              
           DISPLAY " ".                              
           DISPLAY " ".                              
           DISPLAY "Enter the number of grade points for the semester: ".
           ACCEPT SEMESTER-GRADE-POINTS.             
           DISPLAY "Enter the number of credits taken: ".
           ACCEPT CREDITS-TAKEN.                     
           DISPLAY " ".                              
           COMPUTE GPA = SEMESTER-GRADE-POINTS / CREDITS-TAKEN.
           DISPLAY "Your grade point average (GPA) is: " GPA.
           DISPLAY "------------------------------". 
           DISPLAY " ".                              
           DISPLAY " ".                              
           DISPLAY " ".                              
           DISPLAY " ".                              
           DISPLAY " ".                              
