 
/*------------------------------------------------------------------------
   File        : Operations
   Purpose     : 
   Syntax      : 
   Description : 
   Author(s)   : DivyaTheja Pachipula
   Created     : Fri Apr 04 11:14:14 IST 2014
   Notes       : 
 ----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Progress.Windows.Form.


BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS Operations INHERITS Form: 
        
    DEFINE PRIVATE VARIABLE Add         AS Infragistics.Win.Misc.UltraButton                NO-UNDO.
    DEFINE PRIVATE VARIABLE components  AS System.ComponentModel.IContainer                 NO-UNDO.
    DEFINE PRIVATE VARIABLE Division    AS Infragistics.Win.Misc.UltraButton                NO-UNDO.
    DEFINE PRIVATE VARIABLE res         AS Infragistics.Win.UltraWinEditors.UltraTextEditor NO-UNDO.
    DEFINE PRIVATE VARIABLE Int2        AS Infragistics.Win.UltraWinEditors.UltraTextEditor NO-UNDO.
    DEFINE PRIVATE VARIABLE Int1        AS Infragistics.Win.UltraWinEditors.UltraTextEditor NO-UNDO.
    DEFINE PRIVATE VARIABLE Subtract    AS Infragistics.Win.Misc.UltraButton                NO-UNDO.
    DEFINE PRIVATE VARIABLE Multiply    AS Infragistics.Win.Misc.UltraButton                NO-UNDO.
    DEFINE PRIVATE VARIABLE Factorial   AS Infragistics.Win.Misc.UltraButton                NO-UNDO.
    DEFINE PRIVATE VARIABLE ultraPanel1 AS Infragistics.Win.Misc.UltraPanel                 NO-UNDO.
    DEFINE PRIVATE VARIABLE Result      AS Infragistics.Win.Misc.UltraLabel                 NO-UNDO.
    DEFINE PRIVATE VARIABLE Integer2    AS Infragistics.Win.Misc.UltraLabel                 NO-UNDO.
    DEFINE PRIVATE VARIABLE Integer1    AS Infragistics.Win.Misc.UltraLabel                 NO-UNDO.
    DEFINE         VARIABLE testOp      AS BasicOperations                                  NO-UNDO.
    DEFINE         VARIABLE i1          AS INTEGER                                          NO-UNDO.
    DEFINE         VARIABLE i2          AS INTEGER                                          NO-UNDO.    
    CONSTRUCTOR PUBLIC Operations (  ):
                
                
        SUPER().
        testOp = NEW BasicOperations(). 
        InitializeComponent().
        THIS-OBJECT:ComponentsCollection:ADD(THIS-OBJECT:components).
        CATCH e AS Progress.Lang.Error:
            UNDO, THROW e.
        END CATCH.

    END CONSTRUCTOR.

    /*------------------------------------------------------------------------------
     Purpose:
     Notes:
    ------------------------------------------------------------------------------*/
    @VisualDesigner.
    METHOD PRIVATE VOID Add_Click( INPUT sender AS System.Object, INPUT e AS System.EventArgs ):
                                
        i1 = Int1:Value.
        i2 = Int2:Value.                
        res:Value = testOp:Addition(i1, i2).

    END METHOD.

    /*------------------------------------------------------------------------------
     Purpose:
     Notes:
    ------------------------------------------------------------------------------*/
    @VisualDesigner.
    METHOD PRIVATE VOID Division_Click( INPUT sender AS System.Object, INPUT e AS System.EventArgs ):
                
        i1 = Int1:Value.
        i2 = Int2:Value.        
        res:Value = testOp:Division(i1, i2).

    END METHOD.

    /*------------------------------------------------------------------------------
     Purpose:
     Notes:
    ------------------------------------------------------------------------------*/
    @VisualDesigner.
    METHOD PRIVATE VOID Factorial_Click( INPUT sender AS System.Object, INPUT e AS System.EventArgs ):
                
        DEFINE VARIABLE fRes AS INTEGER NO-UNDO.
        fRes = Int1:Value.
                
        RUN Factorial.p (INPUT-OUTPUT fRes).
        res:Value = fRes.

    END METHOD.

    METHOD PRIVATE VOID InitializeComponent(  ):
                
        /* NOTE: The following method is automatically generated.
        
        We strongly suggest that the contents of this method only be modified using the
        Visual Designer to avoid any incompatible modifications.
        
        Modifying the contents of this method using a code editor will invalidate any support for this file. */
        THIS-OBJECT:Int1 = NEW Infragistics.Win.UltraWinEditors.UltraTextEditor().
        THIS-OBJECT:Int2 = NEW Infragistics.Win.UltraWinEditors.UltraTextEditor().
        THIS-OBJECT:Integer1 = NEW Infragistics.Win.Misc.UltraLabel().
        THIS-OBJECT:Integer2 = NEW Infragistics.Win.Misc.UltraLabel().
        THIS-OBJECT:Result = NEW Infragistics.Win.Misc.UltraLabel().
        THIS-OBJECT:res = NEW Infragistics.Win.UltraWinEditors.UltraTextEditor().
        THIS-OBJECT:Add = NEW Infragistics.Win.Misc.UltraButton().
        THIS-OBJECT:Subtract = NEW Infragistics.Win.Misc.UltraButton().
        THIS-OBJECT:Multiply = NEW Infragistics.Win.Misc.UltraButton().
        THIS-OBJECT:Factorial = NEW Infragistics.Win.Misc.UltraButton().
        THIS-OBJECT:ultraPanel1 = NEW Infragistics.Win.Misc.UltraPanel().
        THIS-OBJECT:Division = NEW Infragistics.Win.Misc.UltraButton().
        CAST(THIS-OBJECT:Int1, System.ComponentModel.ISupportInitialize):BeginInit().
        CAST(THIS-OBJECT:Int2, System.ComponentModel.ISupportInitialize):BeginInit().
        CAST(THIS-OBJECT:res, System.ComponentModel.ISupportInitialize):BeginInit().
        THIS-OBJECT:ultraPanel1:SuspendLayout().
        THIS-OBJECT:SuspendLayout().
        /*  */
        /* Int1 */
        /*  */
        THIS-OBJECT:Int1:Location = NEW System.Drawing.Point(234, 34).
        THIS-OBJECT:Int1:Name = "Int1".
        THIS-OBJECT:Int1:Size = NEW System.Drawing.Size(78, 24).
        THIS-OBJECT:Int1:TabIndex = 0.
        THIS-OBJECT:Int1:ValueChanged:Subscribe(THIS-OBJECT:ultraTextEditor1_ValueChanged).
        /*  */
        /* Int2 */
        /*  */
        THIS-OBJECT:Int2:Location = NEW System.Drawing.Point(234, 70).
        THIS-OBJECT:Int2:Name = "Int2".
        THIS-OBJECT:Int2:Size = NEW System.Drawing.Size(78, 24).
        THIS-OBJECT:Int2:TabIndex = 1.
        THIS-OBJECT:Int2:ValueChanged:Subscribe(THIS-OBJECT:ultraTextEditor2_ValueChanged).
        /*  */
        /* Integer1 */
        /*  */
        THIS-OBJECT:Integer1:Font = NEW System.Drawing.Font("Microsoft Sans Serif", Progress.Util.CastUtil:ToSingle(8.25)).
        THIS-OBJECT:Integer1:Location = NEW System.Drawing.Point(128, 39).
        THIS-OBJECT:Integer1:Name = "Integer1".
        THIS-OBJECT:Integer1:Size = NEW System.Drawing.Size(78, 23).
        THIS-OBJECT:Integer1:TabIndex = 2.
        THIS-OBJECT:Integer1:Text = "Integer1".
        THIS-OBJECT:Integer1:Click:Subscribe(THIS-OBJECT:Integer1_Click).
        /*  */
        /* Integer2 */
        /*  */
        THIS-OBJECT:Integer2:Location = NEW System.Drawing.Point(129, 71).
        THIS-OBJECT:Integer2:Name = "Integer2".
        THIS-OBJECT:Integer2:Size = NEW System.Drawing.Size(78, 23).
        THIS-OBJECT:Integer2:TabIndex = 3.
        THIS-OBJECT:Integer2:Text = "Integer2".
        THIS-OBJECT:Integer2:Click:Subscribe(THIS-OBJECT:Integer2_Click).
        /*  */
        /* Result */
        /*  */
        THIS-OBJECT:Result:Location = NEW System.Drawing.Point(130, 110).
        THIS-OBJECT:Result:Name = "Result".
        THIS-OBJECT:Result:Size = NEW System.Drawing.Size(78, 23).
        THIS-OBJECT:Result:TabIndex = 5.
        THIS-OBJECT:Result:Text = "Result".
        THIS-OBJECT:Result:Click:Subscribe(THIS-OBJECT:Result_Click).
        /*  */
        /* res */
        /*  */
        THIS-OBJECT:res:Location = NEW System.Drawing.Point(235, 109).
        THIS-OBJECT:res:Name = "res".
        THIS-OBJECT:res:Size = NEW System.Drawing.Size(78, 24).
        THIS-OBJECT:res:TabIndex = 4.
        THIS-OBJECT:res:ValueChanged:Subscribe(THIS-OBJECT:ultraTextEditor3_ValueChanged).
        /*  */
        /* Add */
        /*  */
        THIS-OBJECT:Add:Location = NEW System.Drawing.Point(82, 200).
        THIS-OBJECT:Add:Name = "Add".
        THIS-OBJECT:Add:Size = NEW System.Drawing.Size(75, 23).
        THIS-OBJECT:Add:TabIndex = 6.
        THIS-OBJECT:Add:Text = "Add".
        THIS-OBJECT:Add:Click:Subscribe(THIS-OBJECT:Add_Click).
        /*  */
        /* Subtract */
        /*  */
        THIS-OBJECT:Subtract:Location = NEW System.Drawing.Point(182, 200).
        THIS-OBJECT:Subtract:Name = "Subtract".
        THIS-OBJECT:Subtract:Size = NEW System.Drawing.Size(75, 23).
        THIS-OBJECT:Subtract:TabIndex = 7.
        THIS-OBJECT:Subtract:Text = "Subtract".
        THIS-OBJECT:Subtract:Click:Subscribe(THIS-OBJECT:Subtract_Click).
        /*  */
        /* Multiply */
        /*  */
        THIS-OBJECT:Multiply:Location = NEW System.Drawing.Point(278, 198).
        THIS-OBJECT:Multiply:Name = "Multiply".
        THIS-OBJECT:Multiply:Size = NEW System.Drawing.Size(75, 23).
        THIS-OBJECT:Multiply:TabIndex = 8.
        THIS-OBJECT:Multiply:Text = "Multiply".
        THIS-OBJECT:Multiply:Click:Subscribe(THIS-OBJECT:Multiply_Click).
        /*  */
        /* Factorial */
        /*  */
        THIS-OBJECT:Factorial:Location = NEW System.Drawing.Point(131, 236).
        THIS-OBJECT:Factorial:Name = "Factorial".
        THIS-OBJECT:Factorial:Size = NEW System.Drawing.Size(75, 23).
        THIS-OBJECT:Factorial:TabIndex = 9.
        THIS-OBJECT:Factorial:Text = "Factorial".
        THIS-OBJECT:Factorial:Click:Subscribe(THIS-OBJECT:Factorial_Click).
        /*  */
        /* ultraPanel1 */
        /*  */
        THIS-OBJECT:ultraPanel1:Location = NEW System.Drawing.Point(12, 12).
        THIS-OBJECT:ultraPanel1:Name = "ultraPanel1".
        THIS-OBJECT:ultraPanel1:Size = NEW System.Drawing.Size(418, 144).
        THIS-OBJECT:ultraPanel1:TabIndex = 10.
        /*  */
        /* Division */
        /*  */
        THIS-OBJECT:Division:Location = NEW System.Drawing.Point(221, 235).
        THIS-OBJECT:Division:Name = "Division".
        THIS-OBJECT:Division:Size = NEW System.Drawing.Size(75, 23).
        THIS-OBJECT:Division:TabIndex = 11.
        THIS-OBJECT:Division:Text = "Division".
        THIS-OBJECT:Division:Click:Subscribe(THIS-OBJECT:Division_Click).
        /*  */
        /* Operations */
        /*  */
        THIS-OBJECT:ClientSize = NEW System.Drawing.Size(442, 355).
        THIS-OBJECT:Controls:Add(THIS-OBJECT:Division).
        THIS-OBJECT:Controls:Add(THIS-OBJECT:Factorial).
        THIS-OBJECT:Controls:Add(THIS-OBJECT:Multiply).
        THIS-OBJECT:Controls:Add(THIS-OBJECT:Subtract).
        THIS-OBJECT:Controls:Add(THIS-OBJECT:Add).
        THIS-OBJECT:Controls:Add(THIS-OBJECT:Result).
        THIS-OBJECT:Controls:Add(THIS-OBJECT:res).
        THIS-OBJECT:Controls:Add(THIS-OBJECT:Integer2).
        THIS-OBJECT:Controls:Add(THIS-OBJECT:Integer1).
        THIS-OBJECT:Controls:Add(THIS-OBJECT:Int2).
        THIS-OBJECT:Controls:Add(THIS-OBJECT:Int1).
        THIS-OBJECT:Controls:Add(THIS-OBJECT:ultraPanel1).
        THIS-OBJECT:Name = "Operations".
        THIS-OBJECT:Text = "Operations".
        THIS-OBJECT:Load:Subscribe(THIS-OBJECT:Operations_Load).
        CAST(THIS-OBJECT:Int1, System.ComponentModel.ISupportInitialize):EndInit().
        CAST(THIS-OBJECT:Int2, System.ComponentModel.ISupportInitialize):EndInit().
        CAST(THIS-OBJECT:res, System.ComponentModel.ISupportInitialize):EndInit().
        THIS-OBJECT:ultraPanel1:ResumeLayout(FALSE).
        THIS-OBJECT:ResumeLayout(FALSE).
        THIS-OBJECT:PerformLayout().
        CATCH e AS Progress.Lang.Error:
            UNDO, THROW e.
        END CATCH.
    END METHOD.

    /*------------------------------------------------------------------------------
     Purpose:
     Notes:
    ------------------------------------------------------------------------------*/
    @VisualDesigner.
    METHOD PRIVATE VOID Multiply_Click( INPUT sender AS System.Object, INPUT e AS System.EventArgs ):
        i1 = Int1:Value.
        i2 = Int2:Value.    
        res:Value = testOp:Multiplication(i1,i2).

    END METHOD.

    /*------------------------------------------------------------------------------
     Purpose:
     Notes:
    ------------------------------------------------------------------------------*/
    @VisualDesigner.
    METHOD PRIVATE VOID Operations_Load( INPUT sender AS System.Object, INPUT e AS System.EventArgs ):
                
        RETURN.

    END METHOD.

    /*------------------------------------------------------------------------------
     Purpose:
     Notes:
    ------------------------------------------------------------------------------*/
    @VisualDesigner.
    METHOD PRIVATE VOID Result_Click( INPUT sender AS System.Object, INPUT e AS System.EventArgs ):
                
        RETURN.

    END METHOD.

    /*------------------------------------------------------------------------------
     Purpose:
     Notes:
    ------------------------------------------------------------------------------*/
    @VisualDesigner.
    METHOD PRIVATE VOID Integer2_Click( INPUT sender AS System.Object, INPUT e AS System.EventArgs ):
                
        RETURN.

    END METHOD.

    /*------------------------------------------------------------------------------
     Purpose:
     Notes:
    ------------------------------------------------------------------------------*/
    @VisualDesigner.
    METHOD PRIVATE VOID Integer1_Click( INPUT sender AS System.Object, INPUT e AS System.EventArgs ):
                
        RETURN.

    END METHOD.


    /*------------------------------------------------------------------------------
     Purpose:
     Notes:
    ------------------------------------------------------------------------------*/
    @VisualDesigner.
    METHOD PRIVATE VOID Subtract_Click( INPUT sender AS System.Object, INPUT e AS System.EventArgs ):
        i1 = Int1:Value.
        i2 = Int2:Value.    
        res:Value = testOp:Substraction(i1, i2).
                
    END METHOD.

    /*------------------------------------------------------------------------------
     Purpose:
     Notes:
    ------------------------------------------------------------------------------*/
    @VisualDesigner.
    METHOD PRIVATE VOID ultraTextEditor3_ValueChanged( INPUT sender AS System.Object, INPUT e AS System.EventArgs ):
                
        RETURN.

    END METHOD.

    /*------------------------------------------------------------------------------
     Purpose:
     Notes:
    ------------------------------------------------------------------------------*/
    @VisualDesigner.
    METHOD PRIVATE VOID ultraTextEditor2_ValueChanged( INPUT sender AS System.Object, INPUT e AS System.EventArgs ):
                
        RETURN.

    END METHOD.

    /*------------------------------------------------------------------------------
     Purpose:
     Notes:
    ------------------------------------------------------------------------------*/
    @VisualDesigner.
    METHOD PRIVATE VOID ultraTextEditor1_ValueChanged( INPUT sender AS System.Object, INPUT e AS System.EventArgs ):
                
        RETURN.

    END METHOD.

    DESTRUCTOR PUBLIC Operations ( ):

    END DESTRUCTOR.

END CLASS.
