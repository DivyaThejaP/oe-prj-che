 
/*------------------------------------------------------------------------
   File        : BasicOperations
   Purpose     : A class file with basic Operations  
   Syntax      : 
   Description : 
   Author(s)   : DivyaTheja Pachipula
   Created     : Thu Dec 19 17:14:07 IST 2013
   Notes       : 
 ----------------------------------------------------------------------*/
  
USING Progress.Lang.*. 

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS BasicOperations:
        
    DEFINE VARIABLE res AS INTEGER NO-UNDO.
    
    /*------------------------------------------------------------------------------
     Purpose: add two integer numbers
     Notes:
    ------------------------------------------------------------------------------*/
    METHOD PUBLIC INTEGER Addition( INPUT var1 AS INTEGER, INPUT var2 AS INTEGER):
        
        res = var1 + var2 .
        RETURN res.    
    END METHOD.
    
    /*------------------------------------------------------------------------------
         Purpose: Substract two integer numbers
         Notes:
     ------------------------------------------------------------------------------*/
    METHOD PUBLIC INTEGER Substraction( INPUT var1 AS INTEGER, INPUT var2 AS INTEGER):
        
        res = var1 - var2 .
        RETURN res.     
    END METHOD.
    
    /*------------------------------------------------------------------------------
      Purpose: Multiply two integer numbers
      Notes:
     ------------------------------------------------------------------------------*/
    METHOD PUBLIC INTEGER Multiplication(  INPUT var1 AS INTEGER, INPUT var2 AS INTEGER ):

        res = var1 * var2 .
        RETURN res.
    END METHOD.

    /*------------------------------------------------------------------------------
      Purpose: To divide two integer numbers
      Notes:
     ------------------------------------------------------------------------------*/
    METHOD PUBLIC INTEGER Division(  INPUT var1 AS INTEGER, INPUT var2 AS INTEGER ):

        res = var1 / var2 .
        RETURN res. 
    END METHOD.

END CLASS.

