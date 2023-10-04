<!--- Please insert your code here --->
<html>
    <head>       
        <link rel="stylesheet" href="../css/task1.css">       
    </head>
    <h1>TASK-1 </h1>
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
             <cfinvoke component="cfstudytask/Components/task1" method="fun_task1" returnvariable="task1result">
                <cfinvokeargument name="textboxval" value="#form.textbox#">                     
             </cfinvoke> <br>
             <cfoutput><span class="span">#task1result#</span></cfoutput>
        </cfif>
    </form>
</html>