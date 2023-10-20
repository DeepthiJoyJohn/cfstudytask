<html>
    <head>       
        <link rel="stylesheet" href="../css/task1.css">       
    </head>
    <h3>TASK-1</h3>
    <h4>Create a page with text box & submit button. Input for the text box is any number    between 1 to 5. Based upon the user input, you should show the corresponding string. 5 is Very good. 4 is good. 3 is fair. 1 & 2 is Ok. Use cfif, cfelseif,cfelse to do this functionality.</h4>
    <form action="index.cfm" method="post">
        <div>
            <label>Text Box</label>
        <div>
        <div>
            <input type="textbox" id="textbox" name="textbox">
        </div><br>
        <div class="submitdiv">
            <button class="submitbtn" type="Submit" name="submitbtn">Submit</button>
        </div>        
    </form>
    <cfif StructKeyExists(form,"submitbtn") and StructKeyExists(form,"textbox")>
        <cfinvoke component="cfstudytask/Components/task1" method="fun_task1" returnvariable="task1result">
        <cfinvokeargument name="textboxval" value="#form.textbox#">                     
        </cfinvoke> <br>
        <cfoutput><span class="span">#task1result#</span></cfoutput>
    </cfif>
</html>