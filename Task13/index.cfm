<html>
    <head>       
        <link rel="stylesheet" href="../css/task1.css">    
        <link rel="stylesheet" href="../css/task4.css"> 
        <script src="../js/task13.js"></script>   
    </head>
    <body>
        <h2>TASK-13</h2>
        <h3>Highlight search keyword:
            You have variable with content “the quick brown fox jumps over the lazy dog”
            Create a page with text box & submit submit button. If you user gave “the” as input, 
            then you need to show the result as,Found the key word in 2 times - the quick brown fox jumps over the lazy dog.
            if input is dog then result should be,Found the key word in 1 time - the quick brown fox jumps over the lazy dog.
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
            <cfif IsDefined("form.Submitbtn") and IsDefined("form.textbox")>                
                <cfinvoke component="cfstudytask/Components/task13" method="fun_task13" returnvariable="task13result">
                    <cfinvokeargument name="textbox" value="#form.textbox#">
                </cfinvoke>
                <cfoutput>#task13result#</cfoutput>           
            </cfif> 
        </form>
    </body>
</html>