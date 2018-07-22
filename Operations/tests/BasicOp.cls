 
/*------------------------------------------------------------------------
   File        : BasicOp.cls
   Purpose     : To test basic operations using ablunit
   Syntax      : 
   Description : 
   Author(s)   : DivyaTheja Pachipula
   Created     : Thu Dec 19 17:36:08 IST 2013
   Notes       : 
 ----------------------------------------------------------------------*/

 
USING OpenEdge.Core.Assert FROM PROPATH.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS BasicOp:
    
    
    DEFINE VARIABLE basicOPs AS BasicOperations.
    DEFINE VARIABLE reslt    AS INTEGER         NO-UNDO.

    /*------------------------------------------------------------------------------
     Purpose:
     Notes:
    ------------------------------------------------------------------------------*/
    CONSTRUCTOR PUBLIC BasicOp (  ):
        SUPER ().
        basicOPs = NEW BasicOperations().		
    END CONSTRUCTOR.



    /*------------------------------------------------------------------------------
         Purpose:  																	  
         Notes:  																	  
 ------------------------------------------------------------------------------*/
    @Test. 
    METHOD PUBLIC VOID testAdditionValid(  ):
        reslt = basicOPs:Addition(10, 100).
        Assert:equals(reslt, 1106).      

    END METHOD.
	    
    /*------------------------------------------------------------------------------
            Purpose:  																	  
            Notes:  																	  
    ------------------------------------------------------------------------------*/
    @Test. 
    METHOD PUBLIC VOID testSubstraction(  ):
        reslt = basicOPs:Substraction(120, 20).
        Assert:equals(reslt, 100).

    END METHOD.
	
	
    
    /*------------------------------------------------------------------------------
            Purpose:  																	  
            Notes:  																	  
    ------------------------------------------------------------------------------*/
    @Tesdt. 
    METHOD PUBLIC VOID testMultiplication(  ):
        reslt = basicOPs:Multiplication(10, 20).
        Assert:equals(reslt, 200).
        RETURN.

    END METHOD.
	
	
    
    /*------------------------------------------------------------------------------
            Purpose:  																	  
            Notes:  																	  
    ------------------------------------------------------------------------------*/
   
    @Test. 
    METHOD PUBLIC VOID testDivision(  ):
        
        reslt = basicOPs:Division(120, 20).
        Assert:equals(reslt, 6).
        RETURN.

    END METHOD.
	    

END CLASS.