
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

DEFINE VARIABLE test AS INTEGER NO-UNDO INIT 3.

/*MESSAGE "tewtw"   */
/*VIEW-AS ALERT-BOX.*/
/* **********************  Internal Procedures  *********************** */

/*------------------------------------------------------------------------
    File        : custom.p
    Purpose     : 

    Syntax      :

    Description : 

    Author(s)   : dpachipu
    Created     : Fri Jun 29 10:59:00 IST 2018
    Notes       :
  ----------------------------------------------------------------------*/

/* ***************************  Definitions  ************************** */


/* ********************  Preprocessor Definitions  ******************** */
 //RUN getsrcdb(OUTPUT finaldb) .
DEF               VARIABLE ff  AS CHARA     NO-UNDO.
/* ***************************  Main Block  *************************** */
/* proc1.p */
DEFINE NEW SHARED VARIABLE foo AS CHARACTER NO-UNDO.

foo = "bar". 
//RUN proc2.p. 

MESSAGE "Initial definition: " foo VIEW-AS ALERT-BOX.

DEFINE VARIABLE street-number AS INTEGER FORMAT "-9999999999".
street-number = -2147483647.
DISPLAY street-number.

PROCEDURE Test:
  MESSAGE "Test".
  RETURN.
  MESSAGE "Test2". /* RETURN statement makes this MESSAGE unreachable */
END PROCEDURE.