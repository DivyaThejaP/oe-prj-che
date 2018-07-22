 
 /*------------------------------------------------------------------------
    File        : TestSuiteClass
    Syntax      : 
    Author(s)   : DivyaTheja Pachipula
    Created     : Thu Dec 19 18:28:46 IST 2013
    Notes       : 
  ----------------------------------------------------------------------*/

BLOCK-LEVEL ON ERROR UNDO, THROW.
@TestSuite(classes="BasicOp").
@TestSuite(procedures="testFact.p").
CLASS TestSuiteClass: 
	

END CLASS.