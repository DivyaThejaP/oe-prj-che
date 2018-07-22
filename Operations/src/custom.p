
/*------------------------------------------------------------------------
    File        : custom.p
    Purpose     : 

    Syntax      :

    Description : 

    Author(s)   : 
    Created     : Thu Jun 15 12:47:27 IST 2017
    Notes       :
  ----------------------------------------------------------------------*/

/* ***************************  Definitions  ************************** */

BLOCK-LEVEL ON ERROR UNDO, THROW.

/* ********************  Preprocessor Definitions  ******************** */


/* ***************************  Main Block  *************************** */
 
DEFINE VARIABLE test          AS INTEGER NO-UNDO INIT 3.

/*MESSAGE "tewtw"   */
/*VIEW-AS ALERT-BOX.*/
/* **********************  Internal Procedures  *********************** */

DEFINE VARIABLE street-number AS INTEGER FORMAT "-9999999999".
street-number = -2147483647.
DISPLAY street-number. 
street-number = -2147483647. 
PROCEDURE Test: 
    MESSAGE "Test".
    RETURN.
    MESSAGE "Test2". /* RETURN statement makes this MESSAGE unreachable */
END PROCEDURE.