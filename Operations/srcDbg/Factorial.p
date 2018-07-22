
/*------------------------------------------------------------------------
   File        : Factorial.p
   Purpose     : 
   Syntax      : 
   Description : 
   Author(s)   : DivyaTheja Pachipula
   Created     : Fri Apr 04 11:14:14 IST 2014
   Notes       : 
 ----------------------------------------------------------------------*/

 
/* ***************************  Definitions  ************************** */
DEFINE INPUT-OUTPUT PARAMETER nfact AS INTEGER NO-UNDO. 
DEFINE VARIABLE ix  AS INTEGER                NO-UNDO.
DEFINE VARIABLE mye AS Progress.Lang.AppError NO-UNDO. 
/* ***************************  Main Block  *************************** */
IF nfact < 2 THEN 
DO:  
    mye = NEW Progress.Lang.AppError("The value is lessthen 2", 200).
    mye = NEW Progress.Lang.AppError("The value is lessthen 2", 200).      
    mye:ReturnValue = "User inputs out of range".  
    RETURN ERROR mye.
END. 
IF nfact > 12 THEN 
DO:  
    mye = NEW Progress.Lang.AppError("Factorial value won't fit in an integer.", 201).  
    mye:ReturnValue = "Calculated value out of range".  
    RETURN ERROR mye.
END. 
 
ASSIGN  
    ix    = nfact  
    nfact = nfact - 1. 
IF nfact <= 1 THEN 
DO:  
    ASSIGN 
        nfact = ix.  
    RETURN.
END. 
RUN Factorial.p (INPUT-OUTPUT nfact).
ASSIGN 
    nfact = nfact * ix.  
    
RETURN.
        
