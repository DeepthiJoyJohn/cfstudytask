<html>
    <head>       
        <link rel="stylesheet" href="../css/task1.css"> 
        <link rel="stylesheet" href="../css/task14.css"> 
        <link rel="stylesheet" href="../css/task4.css"> 
        <script src="../js/task14.js"></script>     
    </head>
    <body>    
        <form>
            <cfinvoke component="cfstudytask/Components/task14" method="task14getdetail" returnvariable="result14detail">
                <cfinvokeargument name="imagename" value="#url.imageid#">                                                 
            </cfinvoke>
            <cfoutput>
                <table>
                    <cfloop query="result14detail">
                        <tr>
                            <td>Image Name:#result14detail.imagename#</td>
                            <td>Image Desccription:#result14detail.imagedescription#</td>                            
                        </tr>
                        <tr>
                            <td colspan="2"><img src="..\Images\#result14detail.uploadedimgname#"></td>
                        </tr>
                    </cfloop>
                </table>
            </cfoutput>
        </form>
    </body>
</html>