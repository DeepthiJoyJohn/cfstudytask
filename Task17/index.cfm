<html>
    <head>       
        <link rel="stylesheet" href="../css/task1.css">    
        <link rel="stylesheet" href="../css/task17.css">
        <script src="../js/task17.js"></script>    
    </head>
    <body>
        <h2>TASK-17</h2>
        <h3>Create a page with text box & submit button. User can enter numeric value in the text box & click the submit button. 
            If user entered non numeric character, page should validate user input using JS.
            While clicking on submit button, page should show up 1 to given input number, 
            odd numbers should be in blue, even numbers should be in green.
        </h3>
        <form name="form" id="form" action="" method="post" onsubmit="return validate()">
            <div>
                <label>Text Box</label>
            <div>
            <div>
                <input type="text" id="textbox" name="textbox">
                <span  class="errorspan" id="errortext"></span> 
            </div><br>
            <div class="submitdiv">
                <input type="Submit" class="submitbtn" name="Submitbtn" value="Submit">
            </div>          
        </form>
        <cfif StructKeyExists(form,"Submitbtn") and StructKeyExists(form,"textbox")>                
            <cfinvoke component="cfstudytask/Components/task17" method="task17" returnvariable="result17">
                <cfinvokeargument name="textbox" value="#form.textbox#">
            </cfinvoke> <br>
            <cfoutput>#result17#</cfoutput>           
        </cfif> 
    </body>
</html>