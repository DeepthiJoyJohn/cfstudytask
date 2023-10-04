<html>
    <head>       
        <link rel="stylesheet" href="../css/task1.css">       
    </head>
    <h3>TASK-3 (input "3,8,9,11,12" result numbers which can be divided by 3) </h3>
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
             <cfinvoke component="cfstudytask/Components/task3" method="fun_task3" returnvariable="task3result">
                <cfinvokeargument name="textboxval" value="#form.textbox#">                     
             </cfinvoke><br> 
             <cfoutput><span class="span">#task3result#</span></cfoutput>
        </cfif>
    </form>
</html>