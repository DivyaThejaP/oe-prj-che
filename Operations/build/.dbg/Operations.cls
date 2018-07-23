        1    
        2   /*------------------------------------------------------------------------
        3      File        : Operations
        4      Purpose     : 
        5      Syntax      : 
        6      Description : 
        7      Author(s)   : DivyaTheja Pachipula
        8      Created     : Fri Apr 04 11:14:14 IST 2014
        9      Notes       : 
       10    ----------------------------------------------------------------------*/
       11   
       12   USING Progress.Lang.*.
       13   USING Progress.Windows.Form.
       14   
       15   
       16   BLOCK-LEVEL ON ERROR UNDO, THROW.
       17   
       18   CLASS Operations INHERITS Form: 
       19           
       20       DEFINE PRIVATE VARIABLE Add         AS Infragistics.Win.Misc.UltraButton                NO-UNDO.
       21       DEFINE PRIVATE VARIABLE components  AS System.ComponentModel.IContainer                 NO-UNDO.
       22       DEFINE PRIVATE VARIABLE Division    AS Infragistics.Win.Misc.UltraButton                NO-UNDO.
       23       DEFINE PRIVATE VARIABLE res         AS Infragistics.Win.UltraWinEditors.UltraTextEditor NO-UNDO.
       24       DEFINE PRIVATE VARIABLE Int2        AS Infragistics.Win.UltraWinEditors.UltraTextEditor NO-UNDO.
       25       DEFINE PRIVATE VARIABLE Int1        AS Infragistics.Win.UltraWinEditors.UltraTextEditor NO-UNDO.
       26       DEFINE PRIVATE VARIABLE Subtract    AS Infragistics.Win.Misc.UltraButton                NO-UNDO.
       27       DEFINE PRIVATE VARIABLE Multiply    AS Infragistics.Win.Misc.UltraButton                NO-UNDO.
       28       DEFINE PRIVATE VARIABLE Factorial   AS Infragistics.Win.Misc.UltraButton                NO-UNDO.
       29       DEFINE PRIVATE VARIABLE ultraPanel1 AS Infragistics.Win.Misc.UltraPanel                 NO-UNDO.
       30       DEFINE PRIVATE VARIABLE Result      AS Infragistics.Win.Misc.UltraLabel                 NO-UNDO.
       31       DEFINE PRIVATE VARIABLE Integer2    AS Infragistics.Win.Misc.UltraLabel                 NO-UNDO.
       32       DEFINE PRIVATE VARIABLE Integer1    AS Infragistics.Win.Misc.UltraLabel                 NO-UNDO.
       33       DEFINE         VARIABLE testOp      AS BasicOperations                                  NO-UNDO.
       34       DEFINE         VARIABLE i1          AS INTEGER                                          NO-UNDO.
       35       DEFINE         VARIABLE i2          AS INTEGER                                          NO-UNDO.    
       36       CONSTRUCTOR PUBLIC Operations (  ):
       37                   
       38                   
       39           SUPER().
       40           testOp = NEW BasicOperations(). 
       41           InitializeComponent().
       42           THIS-OBJECT:ComponentsCollection:ADD(THIS-OBJECT:components).
       43           CATCH e AS Progress.Lang.Error:
       44               UNDO, THROW e.
       45           END CATCH.
       46   
       47       END CONSTRUCTOR.
       48   
       49       /*------------------------------------------------------------------------------
       50        Purpose:
       51        Notes:
       52       ------------------------------------------------------------------------------*/
       53       @VisualDesigner.
       54       METHOD PRIVATE VOID Add_Click( INPUT sender AS System.Object, INPUT e AS System.EventArgs ):
       55                                   
       56           i1 = Int1:Value.
       57           i2 = Int2:Value.                
       58           res:Value = testOp:Addition(i1, i2).
       59   
       60       END METHOD.
       61   
       62       /*------------------------------------------------------------------------------
       63        Purpose:
       64        Notes:
       65       ------------------------------------------------------------------------------*/
       66       @VisualDesigner.
       67       METHOD PRIVATE VOID Division_Click( INPUT sender AS System.Object, INPUT e AS System.EventArgs ):
       68                   
       69           i1 = Int1:Value.
       70           i2 = Int2:Value.        
       71           res:Value = testOp:Division(i1, i2).
       72   
       73       END METHOD.
       74   
       75       /*------------------------------------------------------------------------------
       76        Purpose:
       77        Notes:
       78       ------------------------------------------------------------------------------*/
       79       @VisualDesigner.
       80       METHOD PRIVATE VOID Factorial_Click( INPUT sender AS System.Object, INPUT e AS System.EventArgs ):
       81                   
       82           DEFINE VARIABLE fRes AS INTEGER NO-UNDO.
       83           fRes = Int1:Value.
       84                   
       85           RUN Factorial.p (INPUT-OUTPUT fRes).
       86           res:Value = fRes.
       87   
       88       END METHOD.
       89   
       90       METHOD PRIVATE VOID InitializeComponent(  ):
       91                   
       92           /* NOTE: The following method is automatically generated.
       93           
       94           We strongly suggest that the contents of this method only be modified using the
       95           Visual Designer to avoid any incompatible modifications.
       96           
       97           Modifying the contents of this method using a code editor will invalidate any support for this file. */
       98           THIS-OBJECT:Int1 = NEW Infragistics.Win.UltraWinEditors.UltraTextEditor().
       99           THIS-OBJECT:Int2 = NEW Infragistics.Win.UltraWinEditors.UltraTextEditor().
      100           THIS-OBJECT:Integer1 = NEW Infragistics.Win.Misc.UltraLabel().
      101           THIS-OBJECT:Integer2 = NEW Infragistics.Win.Misc.UltraLabel().
      102           THIS-OBJECT:Result = NEW Infragistics.Win.Misc.UltraLabel().
      103           THIS-OBJECT:res = NEW Infragistics.Win.UltraWinEditors.UltraTextEditor().
      104           THIS-OBJECT:Add = NEW Infragistics.Win.Misc.UltraButton().
      105           THIS-OBJECT:Subtract = NEW Infragistics.Win.Misc.UltraButton().
      106           THIS-OBJECT:Multiply = NEW Infragistics.Win.Misc.UltraButton().
      107           THIS-OBJECT:Factorial = NEW Infragistics.Win.Misc.UltraButton().
      108           THIS-OBJECT:ultraPanel1 = NEW Infragistics.Win.Misc.UltraPanel().
      109           THIS-OBJECT:Division = NEW Infragistics.Win.Misc.UltraButton().
      110           CAST(THIS-OBJECT:Int1, System.ComponentModel.ISupportInitialize):BeginInit().
      111           CAST(THIS-OBJECT:Int2, System.ComponentModel.ISupportInitialize):BeginInit().
      112           CAST(THIS-OBJECT:res, System.ComponentModel.ISupportInitialize):BeginInit().
      113           THIS-OBJECT:ultraPanel1:SuspendLayout().
      114           THIS-OBJECT:SuspendLayout().
      115           /*  */
      116           /* Int1 */
      117           /*  */
      118           THIS-OBJECT:Int1:Location = NEW System.Drawing.Point(234, 34).
      119           THIS-OBJECT:Int1:Name = "Int1".
      120           THIS-OBJECT:Int1:Size = NEW System.Drawing.Size(78, 24).
      121           THIS-OBJECT:Int1:TabIndex = 0.
      122           THIS-OBJECT:Int1:ValueChanged:Subscribe(THIS-OBJECT:ultraTextEditor1_ValueChanged).
      123           /*  */
      124           /* Int2 */
      125           /*  */
      126           THIS-OBJECT:Int2:Location = NEW System.Drawing.Point(234, 70).
      127           THIS-OBJECT:Int2:Name = "Int2".
      128           THIS-OBJECT:Int2:Size = NEW System.Drawing.Size(78, 24).
      129           THIS-OBJECT:Int2:TabIndex = 1.
      130           THIS-OBJECT:Int2:ValueChanged:Subscribe(THIS-OBJECT:ultraTextEditor2_ValueChanged).
      131           /*  */
      132           /* Integer1 */
      133           /*  */
      134           THIS-OBJECT:Integer1:Font = NEW System.Drawing.Font("Microsoft Sans Serif", Progress.Util.CastUtil:ToSingle(8.25)).
      135           THIS-OBJECT:Integer1:Location = NEW System.Drawing.Point(128, 39).
      136           THIS-OBJECT:Integer1:Name = "Integer1".
      137           THIS-OBJECT:Integer1:Size = NEW System.Drawing.Size(78, 23).
      138           THIS-OBJECT:Integer1:TabIndex = 2.
      139           THIS-OBJECT:Integer1:Text = "Integer1".
      140           THIS-OBJECT:Integer1:Click:Subscribe(THIS-OBJECT:Integer1_Click).
      141           /*  */
      142           /* Integer2 */
      143           /*  */
      144           THIS-OBJECT:Integer2:Location = NEW System.Drawing.Point(129, 71).
      145           THIS-OBJECT:Integer2:Name = "Integer2".
      146           THIS-OBJECT:Integer2:Size = NEW System.Drawing.Size(78, 23).
      147           THIS-OBJECT:Integer2:TabIndex = 3.
      148           THIS-OBJECT:Integer2:Text = "Integer2".
      149           THIS-OBJECT:Integer2:Click:Subscribe(THIS-OBJECT:Integer2_Click).
      150           /*  */
      151           /* Result */
      152           /*  */
      153           THIS-OBJECT:Result:Location = NEW System.Drawing.Point(130, 110).
      154           THIS-OBJECT:Result:Name = "Result".
      155           THIS-OBJECT:Result:Size = NEW System.Drawing.Size(78, 23).
      156           THIS-OBJECT:Result:TabIndex = 5.
      157           THIS-OBJECT:Result:Text = "Result".
      158           THIS-OBJECT:Result:Click:Subscribe(THIS-OBJECT:Result_Click).
      159           /*  */
      160           /* res */
      161           /*  */
      162           THIS-OBJECT:res:Location = NEW System.Drawing.Point(235, 109).
      163           THIS-OBJECT:res:Name = "res".
      164           THIS-OBJECT:res:Size = NEW System.Drawing.Size(78, 24).
      165           THIS-OBJECT:res:TabIndex = 4.
      166           THIS-OBJECT:res:ValueChanged:Subscribe(THIS-OBJECT:ultraTextEditor3_ValueChanged).
      167           /*  */
      168           /* Add */
      169           /*  */
      170           THIS-OBJECT:Add:Location = NEW System.Drawing.Point(82, 200).
      171           THIS-OBJECT:Add:Name = "Add".
      172           THIS-OBJECT:Add:Size = NEW System.Drawing.Size(75, 23).
      173           THIS-OBJECT:Add:TabIndex = 6.
      174           THIS-OBJECT:Add:Text = "Add".
      175           THIS-OBJECT:Add:Click:Subscribe(THIS-OBJECT:Add_Click).
      176           /*  */
      177           /* Subtract */
      178           /*  */
      179           THIS-OBJECT:Subtract:Location = NEW System.Drawing.Point(182, 200).
      180           THIS-OBJECT:Subtract:Name = "Subtract".
      181           THIS-OBJECT:Subtract:Size = NEW System.Drawing.Size(75, 23).
      182           THIS-OBJECT:Subtract:TabIndex = 7.
      183           THIS-OBJECT:Subtract:Text = "Subtract".
      184           THIS-OBJECT:Subtract:Click:Subscribe(THIS-OBJECT:Subtract_Click).
      185           /*  */
      186           /* Multiply */
      187           /*  */
      188           THIS-OBJECT:Multiply:Location = NEW System.Drawing.Point(278, 198).
      189           THIS-OBJECT:Multiply:Name = "Multiply".
      190           THIS-OBJECT:Multiply:Size = NEW System.Drawing.Size(75, 23).
      191           THIS-OBJECT:Multiply:TabIndex = 8.
      192           THIS-OBJECT:Multiply:Text = "Multiply".
      193           THIS-OBJECT:Multiply:Click:Subscribe(THIS-OBJECT:Multiply_Click).
      194           /*  */
      195           /* Factorial */
      196           /*  */
      197           THIS-OBJECT:Factorial:Location = NEW System.Drawing.Point(131, 236).
      198           THIS-OBJECT:Factorial:Name = "Factorial".
      199           THIS-OBJECT:Factorial:Size = NEW System.Drawing.Size(75, 23).
      200           THIS-OBJECT:Factorial:TabIndex = 9.
      201           THIS-OBJECT:Factorial:Text = "Factorial".
      202           THIS-OBJECT:Factorial:Click:Subscribe(THIS-OBJECT:Factorial_Click).
      203           /*  */
      204           /* ultraPanel1 */
      205           /*  */
      206           THIS-OBJECT:ultraPanel1:Location = NEW System.Drawing.Point(12, 12).
      207           THIS-OBJECT:ultraPanel1:Name = "ultraPanel1".
      208           THIS-OBJECT:ultraPanel1:Size = NEW System.Drawing.Size(418, 144).
      209           THIS-OBJECT:ultraPanel1:TabIndex = 10.
      210           /*  */
      211           /* Division */
      212           /*  */
      213           THIS-OBJECT:Division:Location = NEW System.Drawing.Point(221, 235).
      214           THIS-OBJECT:Division:Name = "Division".
      215           THIS-OBJECT:Division:Size = NEW System.Drawing.Size(75, 23).
      216           THIS-OBJECT:Division:TabIndex = 11.
      217           THIS-OBJECT:Division:Text = "Division".
      218           THIS-OBJECT:Division:Click:Subscribe(THIS-OBJECT:Division_Click).
      219           /*  */
      220           /* Operations */
      221           /*  */
      222           THIS-OBJECT:ClientSize = NEW System.Drawing.Size(442, 355).
      223           THIS-OBJECT:Controls:Add(THIS-OBJECT:Division).
      224           THIS-OBJECT:Controls:Add(THIS-OBJECT:Factorial).
      225           THIS-OBJECT:Controls:Add(THIS-OBJECT:Multiply).
      226           THIS-OBJECT:Controls:Add(THIS-OBJECT:Subtract).
      227           THIS-OBJECT:Controls:Add(THIS-OBJECT:Add).
      228           THIS-OBJECT:Controls:Add(THIS-OBJECT:Result).
      229           THIS-OBJECT:Controls:Add(THIS-OBJECT:res).
      230           THIS-OBJECT:Controls:Add(THIS-OBJECT:Integer2).
      231           THIS-OBJECT:Controls:Add(THIS-OBJECT:Integer1).
      232           THIS-OBJECT:Controls:Add(THIS-OBJECT:Int2).
      233           THIS-OBJECT:Controls:Add(THIS-OBJECT:Int1).
      234           THIS-OBJECT:Controls:Add(THIS-OBJECT:ultraPanel1).
      235           THIS-OBJECT:Name = "Operations".
      236           THIS-OBJECT:Text = "Operations".
      237           THIS-OBJECT:Load:Subscribe(THIS-OBJECT:Operations_Load).
      238           CAST(THIS-OBJECT:Int1, System.ComponentModel.ISupportInitialize):EndInit().
      239           CAST(THIS-OBJECT:Int2, System.ComponentModel.ISupportInitialize):EndInit().
      240           CAST(THIS-OBJECT:res, System.ComponentModel.ISupportInitialize):EndInit().
      241           THIS-OBJECT:ultraPanel1:ResumeLayout(FALSE).
      242           THIS-OBJECT:ResumeLayout(FALSE).
      243           THIS-OBJECT:PerformLayout().
      244           CATCH e AS Progress.Lang.Error:
      245               UNDO, THROW e.
      246           END CATCH.
      247       END METHOD.
      248   
      249       /*------------------------------------------------------------------------------
      250        Purpose:
      251        Notes:
      252       ------------------------------------------------------------------------------*/
      253       @VisualDesigner.
      254       METHOD PRIVATE VOID Multiply_Click( INPUT sender AS System.Object, INPUT e AS System.EventArgs ):
      255           i1 = Int1:Value.
      256           i2 = Int2:Value.    
      257           res:Value = testOp:Multiplication(i1,i2).
      258           
      259       END METHOD.
      260   
      261       /*------------------------------------------------------------------------------
      262        Purpose:
      263        Notes:
      264       ------------------------------------------------------------------------------*/
      265       @VisualDesigner.
      266       METHOD PRIVATE VOID Operations_Load( INPUT sender AS System.Object, INPUT e AS System.EventArgs ):
      267                   
      268           RETURN.
      269   
      270       END METHOD.
      271   
      272       /*------------------------------------------------------------------------------
      273        Purpose:
      274        Notes:
      275       ------------------------------------------------------------------------------*/
      276       @VisualDesigner.
      277       METHOD PRIVATE VOID Result_Click( INPUT sender AS System.Object, INPUT e AS System.EventArgs ):
      278                   
      279           RETURN.
      280   
      281       END METHOD.
      282   
      283       /*------------------------------------------------------------------------------
      284        Purpose:
      285        Notes:
      286       ------------------------------------------------------------------------------*/
      287       @VisualDesigner.
      288       METHOD PRIVATE VOID Integer2_Click( INPUT sender AS System.Object, INPUT e AS System.EventArgs ):
      289                   
      290           RETURN.
      291   
      292       END METHOD.
      293   
      294       /*------------------------------------------------------------------------------
      295        Purpose:
      296        Notes:
      297       ------------------------------------------------------------------------------*/
      298       @VisualDesigner.
      299       METHOD PRIVATE VOID Integer1_Click( INPUT sender AS System.Object, INPUT e AS System.EventArgs ):
      300                   
      301           RETURN.
      302   
      303       END METHOD.
      304   
      305   
      306       /*------------------------------------------------------------------------------
      307        Purpose:
      308        Notes:
      309       ------------------------------------------------------------------------------*/
      310       @VisualDesigner.
      311       METHOD PRIVATE VOID Subtract_Click( INPUT sender AS System.Object, INPUT e AS System.EventArgs ):
      312           i1 = Int1:Value.
      313           i2 = Int2:Value.    
      314           res:Value = testOp:Substraction(i1, i2).
      315                   
      316       END METHOD.
      317   
      318       /*------------------------------------------------------------------------------
      319        Purpose:
      320        Notes:
      321       ------------------------------------------------------------------------------*/
      322       @VisualDesigner.
      323       METHOD PRIVATE VOID ultraTextEditor3_ValueChanged( INPUT sender AS System.Object, INPUT e AS System.EventArgs ):
      324                   
      325           RETURN.
      326   
      327       END METHOD.
      328   
      329       /*------------------------------------------------------------------------------
      330        Purpose:
      331        Notes:
      332       ------------------------------------------------------------------------------*/
      333       @VisualDesigner.
      334       METHOD PRIVATE VOID ultraTextEditor2_ValueChanged( INPUT sender AS System.Object, INPUT e AS System.EventArgs ):
      335                   
      336           RETURN.
      337   
      338       END METHOD.
      339   
      340       /*------------------------------------------------------------------------------
      341        Purpose:
      342        Notes:
      343       ------------------------------------------------------------------------------*/
      344       @VisualDesigner.
      345       METHOD PRIVATE VOID ultraTextEditor1_ValueChanged( INPUT sender AS System.Object, INPUT e AS System.EventArgs ):
      346                   
      347           RETURN.
      348   
      349       END METHOD.
      350   
      351       DESTRUCTOR PUBLIC Operations ( ):
      352   
      353       END DESTRUCTOR.
      354   
      355   END CLASS.
