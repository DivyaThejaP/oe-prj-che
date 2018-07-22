        1    
        2   /*------------------------------------------------------------------------
        3      File        : BasicOperations
        4      Purpose     : A class file with basic Operations  
        5      Syntax      : 
        6      Description : 
        7      Author(s)   : DivyaTheja Pachipula
        8      Created     : Thu Dec 19 17:14:07 IST 2013
        9      Notes       : 
       10    ----------------------------------------------------------------------*/
       11     
       12   USING Progress.Lang.*. 
       13   
       14   BLOCK-LEVEL ON ERROR UNDO, THROW.
       15   
       16   CLASS BasicOperations:
       17           
       18       DEFINE VARIABLE res AS INTEGER NO-UNDO.
       19       
       20       /*------------------------------------------------------------------------------
       21        Purpose: add two integer numbers
       22        Notes:
       23       ------------------------------------------------------------------------------*/
       24       METHOD PUBLIC INTEGER Addition( INPUT var1 AS INTEGER, INPUT var2 AS INTEGER):
       25           
       26           res = var1 + var2 .
       27           RETURN res.    
       28       END METHOD.
       29       
       30       /*------------------------------------------------------------------------------
       31            Purpose: Substract two integer numbers
       32            Notes:
       33        ------------------------------------------------------------------------------*/
       34       METHOD PUBLIC INTEGER Substraction( INPUT var1 AS INTEGER, INPUT var2 AS INTEGER):
       35           
       36           res = var1 - var2 .
       37           RETURN res.     
       38       END METHOD.
       39       
       40       /*------------------------------------------------------------------------------
       41         Purpose: Multiply two integer numbers
       42         Notes:
       43        ------------------------------------------------------------------------------*/
       44       METHOD PUBLIC INTEGER Multiplication(  INPUT var1 AS INTEGER, INPUT var2 AS INTEGER ):
       45   
       46           res = var1 * var2 .
       47           RETURN res.
       48       END METHOD.
       49   
       50       /*------------------------------------------------------------------------------
       51         Purpose: To divide two integer numbers
       52         Notes:
       53        ------------------------------------------------------------------------------*/
       54       METHOD PUBLIC INTEGER Division(  INPUT var1 AS INTEGER, INPUT var2 AS INTEGER ):
       55   
       56           res = var1 / var2 .
       57           RETURN res. 
       58       END METHOD.
       59   
       60   END CLASS.
       61   
