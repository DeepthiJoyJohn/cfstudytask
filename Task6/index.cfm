<html>
    <head>       
        <link rel="stylesheet" href="../css/task1.css">       
    </head>
    <h2>TASK-6 (Coldfusion structure) </h2>
    <form action="index.cfm" method="post">
        <div>
            <label>Text Box 1(key)</label>
        <div>
        <div>
            <input type="textbox" id="textbox1" name="textbox1">
        </div><br>
        <div>
            <label>Text Box 2(value)</label>
        <div>
        <div>
            <input type="textbox" id="textbox2" name="textbox2">
        </div><br>
        <div class="submitdiv">
            <button class="submitbtn" type="Submit" name="submitbtn">Submit</button>
        </div>
        <cfif IsDefined("form.submitbtn") and IsDefined("form.textbox1") and IsDefined("form.textbox2")>
             <cfinvoke component="cfstudytask/Components/task6" method="fun_task6" returnvariable="task6result">
                <cfinvokeargument name="textboxval1" value="#form.textbox1#">
                <cfinvokeargument name="textboxval2" value="#form.textbox2#">                                          
             </cfinvoke><br> 
             <cfdump var="#task6result#">
        </cfif>
    </form>
</html>