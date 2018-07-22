...s\src\Factorial.p                  07/09/2018 16:19:10   PROGRESS(R) Page 1   

{} Line Blk
-- ---- ---
      1     
      2     /*------------------------------------------------------------------
      2     ------
      3        File        : Factorial.p
      4        Purpose     : 
      5        Syntax      : 
      6        Description : 
      7        Author(s)   : DivyaTheja Pachipula
      8        Created     : Fri Apr 04 11:14:14 IST 2014
      9        Notes       : 
     10      -------------------------------------------------------------------
     10     ---*/
     11     
     12      
     13     /* ***************************  Definitions  ***********************
     13     *** */
     14     DEFINE INPUT-OUTPUT PARAMETER nfact AS INTEGER NO-UNDO. 
     15     DEFINE VARIABLE ix  AS INTEGER                NO-UNDO.
     16     DEFINE VARIABLE mye AS Progress.Lang.AppError NO-UNDO. 
     17     /* ***************************  Main Block  ************************
     17     *** */
     18     IF nfact < 2 THEN 
     19   1 DO:  
     20         mye = NEW Progress.Lang.AppError("The value is lessthen 2", 200)
     20   1 .
     21         mye = NEW Progress.Lang.AppError("The value is lessthen 2", 200)
     21   1 .      
     22   1     mye:ReturnValue = "User inputs out of range".  
     23   1     RETURN ERROR mye.
     24     END. 
     25     IF nfact > 12 THEN 
     26   1 DO:  
     27         mye = NEW Progress.Lang.AppError("Factorial value won't fit in a
     27   1 n integer.", 201).  
     28   1     mye:ReturnValue = "Calculated value out of range".  
     29   1     RETURN ERROR mye.
     30     END. 
     31      
     32     ASSIGN  
     33         ix    = nfact  
     34         nfact = nfact - 1. 
     35     IF nfact <= 1 THEN 
     36   1 DO:  
     37   1     ASSIGN 
     38   1         nfact = ix.  
     39   1     RETURN.
     40     END. 
     41     RUN Factorial.p (INPUT-OUTPUT nfact).
     42     ASSIGN 
     43         nfact = nfact * ix.  
     44         
...s\src\Factorial.p                  07/09/2018 16:19:10   PROGRESS(R) Page 2   

{} Line Blk
-- ---- ---
     45     RETURN.
     45             
...s\src\Factorial.p                  07/09/2018 16:19:10   PROGRESS(R) Page 3   

     File Name       Line Blk. Type   Tran            Blk. Label            
-------------------- ---- ----------- ---- --------------------------------
...s\src\Factorial.p    0 Procedure   No                                    
...s\src\Factorial.p   18 Do          No                                    
...s\src\Factorial.p   25 Do          No                                    
...s\src\Factorial.p   35 Do          No                                    
