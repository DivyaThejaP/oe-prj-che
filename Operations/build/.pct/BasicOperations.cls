...sicOperations.cls                  07/23/2018 20:54:09   PROGRESS(R) Page 1   

{} Line Blk
-- ---- ---
      1      
      2     /*------------------------------------------------------------------
      2     ------
      3        File        : BasicOperations
      4        Purpose     : A class file with basic Operations  
      5        Syntax      : 
      6        Description : 
      7        Author(s)   : DivyaTheja Pachipula
      8        Created     : Thu Dec 19 17:14:07 IST 2013
      9        Notes       : 
     10      -------------------------------------------------------------------
     10     ---*/
     11       
     12     USING Progress.Lang.*. 
     13     
     14     BLOCK-LEVEL ON ERROR UNDO, THROW.
     15     
     16     CLASS BasicOperations:
     17             
     18         DEFINE VARIABLE res AS INTEGER NO-UNDO.
     19         
     20         /*--------------------------------------------------------------
     20     ----------------
     21          Purpose: add two integer numbers
     22          Notes:
     23         ----------------------------------------------------------------
     23     --------------*/
     24         METHOD PUBLIC INTEGER Addition( INPUT var1 AS INTEGER, INPUT var
     24     2 AS INTEGER):
     25             
     26             res = var1 + var2 .
     27             RETURN res.    
     28         END METHOD.
     29         
     30         /*--------------------------------------------------------------
     30     ----------------
     31              Purpose: Substract two integer numbers
     32              Notes:
     33          ---------------------------------------------------------------
     33     ---------------*/
     34         METHOD PUBLIC INTEGER Substraction( INPUT var1 AS INTEGER, INPUT
     34      var2 AS INTEGER):
     35             
     36             res = var1 - var2 .
     37             RETURN res.     
     38         END METHOD.
     39         
     40         /*--------------------------------------------------------------
     40     ----------------
     41           Purpose: Multiply two integer numbers
     42           Notes:
...sicOperations.cls                  07/23/2018 20:54:09   PROGRESS(R) Page 2   

{} Line Blk
-- ---- ---
     43          ---------------------------------------------------------------
     43     ---------------*/
     44         METHOD PUBLIC INTEGER Multiplication(  INPUT var1 AS INTEGER, IN
     44     PUT var2 AS INTEGER ):
     45     
     46             res = var1 * var2 .
     47             RETURN res.
     48         END METHOD.
     49     
     50         /*--------------------------------------------------------------
     50     ----------------
     51           Purpose: To divide two integer numbers
     52           Notes:
     53          ---------------------------------------------------------------
     53     ---------------*/
     54         METHOD PUBLIC INTEGER Division(  INPUT var1 AS INTEGER, INPUT va
     54     r2 AS INTEGER ):
     55     
     56             res = var1 / var2 .
     57             RETURN res. 
     58         END METHOD.
     59     
     60     END CLASS.
     61     
...sicOperations.cls                  07/23/2018 20:54:09   PROGRESS(R) Page 3   

     File Name       Line Blk. Type   Tran            Blk. Label            
-------------------- ---- ----------- ---- --------------------------------
...sicOperations.cls   24 Method      No   Method Addition                  
...sicOperations.cls   34 Method      No   Method Substraction              
...sicOperations.cls   44 Method      No   Method Multiplication            
...sicOperations.cls   54 Method      No   Method Division                  
...sicOperations.cls   60 Constructor No   Constructor BasicOperations      
...sicOperations.cls    0 Class       No                                    
