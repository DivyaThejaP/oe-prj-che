        1   
        2   /*------------------------------------------------------------------------
        3       File        : custom.p
        4       Purpose     : 
        5   
        6       Syntax      :
        7   
        8       Description : 
        9   
       10       Author(s)   : 
       11       Created     : Thu Jun 15 12:47:27 IST 2017
       12       Notes       :
       13     ----------------------------------------------------------------------*/
       14   
       15   /* ***************************  Definitions  ************************** */
       16   
       17   BLOCK-LEVEL ON ERROR UNDO, THROW.
       18   
       19   /* ********************  Preprocessor Definitions  ******************** */
       20   
       21   
       22   /* ***************************  Main Block  *************************** */
       23    
       24   DEFINE VARIABLE test          AS INTEGER NO-UNDO INIT 3.
       25   
       26   /*MESSAGE "tewtw"   */
       27   /*VIEW-AS ALERT-BOX.*/
       28   /* **********************  Internal Procedures  *********************** */
       29   
       30   DEFINE VARIABLE street-number AS INTEGER FORMAT "-9999999999".
       31   street-number = -2147483647.
       32   DISPLAY street-number. 
       33   street-number = -2147483647. 
       34   PROCEDURE Test: 
       35       MESSAGE "Test".
       36       RETURN.
       37       MESSAGE "Test2". /* RETURN statement makes this MESSAGE unreachable */
       38   END PROCEDURE.
