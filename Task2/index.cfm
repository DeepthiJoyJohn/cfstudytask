<!--- Please insert your code here --->
<html>
    <head>       
        <link rel="stylesheet" href="../css/task1.css">       
    </head>
    <h2>TASK-2 (using cfcase) </h2>
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
        <cfif IsDefined("form.submitbtn") and IsDefined("form.textbox")>
             <cfinvoke component="cfstudytask/Components/task2" method="fun_task2" returnvariable="task2result">
                <cfinvokeargument name="textboxval" value="#form.textbox#">                     
             </cfinvoke><br> 
             <cfoutput><span class="span">#task2result#</span></cfoutput>
        </cfif>
    </form>
</html>