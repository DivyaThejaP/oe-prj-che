  
/*------------------------------------------------------------------------
   File        : testInt.p 
   Syntax      : 
   Author(s)   : DivyaTheja Pachipula
   Created     : Fri Jan 31 20:13:32 IST 2014
   Notes       : 
 ----------------------------------------------------------------------*/

USING OpenEdge.Core.Assert FROM PROPATH.
USING Progress.Lang.AppError.

BLOCK-LEVEL ON ERROR UNDO, THROW.

DEFINE VARIABLE ix    AS INT NO-UNDO.
DEFINE VARIABLE n     AS INTEGER NO-UNDO LABEL "N" FORMAT "->9".
DEFINE VARIABLE nfact AS INTEGER NO-UNDO LABEL "N Factorial" FORMAT ">,>>>,>>>,>>9". 
  
@Test(Expected="AppError"). 
PROCEDURE test1:
    n = 1.
    ASSIGN 
        nfact = n.  
RUN Factorial.p (INPUT-OUTPUT nfact).  
    Assert:EQUALS (n,nfact).

END PROCEDURE. 


@Test.
PROCEDURE test2:
    n = 10.
    ASSIGN 
        nfact = n.
         RETURN. 
    RUN Factorial.p (INPUT-OUTPUT nfact).  
    Assert:EQUALS (3628801,nfact).
    
END PROCEDURE. 


@Test(Expected="AppError").
PROCEDURE testErr:
  n = 23.
    ASSIGN 
        nfact = n.  
    RUN Factorial.p (INPUT-OUTPUT nfact).  
    Assert:equals(nfact,n).
    RUN test.
END PROCEDURE.

PROCEDURE Test:
  MESSAGE "Test".
  RETURN.
  MESSAGE "Test2". /* RETURN statement makes this MESSAGE unreachable */
END PROCEDURE. 

/*                                                */
/*                                                */
/*DEFINE VARIABLE i      AS INTEGER NO-UNDO .     */
/*DEFINE VARIABLE hField AS HANDLE NO-UNDO .      */
/*                                                */
/*DO i = 1 TO m_obuf_hdl:NUM-FIELDS:              */
/*    ASSIGN hField = m_obuf_hdl:BUFFER-FIELD (i).*/
/*    MESSAGE hField:NAME hField:BUFFER-VALUE.    */
/*END.                                            */
/*                                                */
/*hField:                                         */


