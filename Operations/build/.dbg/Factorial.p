        1   
        2   /*------------------------------------------------------------------------
        3      File        : Factorial.p
        4      Purpose     : 
        5      Syntax      : 
        6      Description : 
        7      Author(s)   : DivyaTheja Pachipula
        8      Created     : Fri Apr 04 11:14:14 IST 2014
        9      Notes       : 
       10    ----------------------------------------------------------------------*/
       11    
       12     
       13   /* ***************************  Definitions  ************************** */
       14   DEFINE INPUT-OUTPUT PARAMETER nfact AS INTEGER NO-UNDO. 
       15   DEFINE VARIABLE ix  AS INTEGER                NO-UNDO.
       16   DEFINE VARIABLE mye AS Progress.Lang.AppError NO-UNDO. 
       17   /* ***************************  Main Block  *************************** */
       18   IF nfact < 2 THEN 
       19   DO:  
       20       mye = NEW Progress.Lang.AppError("The value is lessthen 2", 200).
       21       mye = NEW Progress.Lang.AppError("The value is lessthen 2", 200).      
       22       mye:ReturnValue = "User inputs out of range".  
       23       RETURN ERROR mye.
       24   END. 
       25   IF nfact > 12 THEN 
       26   DO:  
       27       mye = NEW Progress.Lang.AppError("Factorial value won't fit in an integer.", 201).  
       28       mye:ReturnValue = "Calculated value out of range".  
       29       RETURN ERROR mye.
       30   END. 
       31    
       32   ASSIGN  
       33       ix    = nfact  
       34       nfact = nfact - 1. 
       35   IF nfact <= 1 THEN 
       36   DO:  
       37       ASSIGN 
       38           nfact = ix.  
       39       RETURN.
       40   END. 
       41   RUN Factorial.p (INPUT-OUTPUT nfact).
       42   ASSIGN 
       43       nfact = nfact * ix.  
       44       
       45   RETURN.
       46           
