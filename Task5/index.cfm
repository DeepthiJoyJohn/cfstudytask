<html>
    <head>       
        <link rel="stylesheet" href="../css/task1.css">       
    </head>
    <h2>TASK-5 (User and Mother Age) </h2>
    <form action="index.cfm" method="post">
        <div>
            <label>DOB (user)</label>
        <div>
        <div>
            <input type="date" id="dobuser" required="yes" name="dobuser">
        </div><br>
        <div>
            <label>DOB (mother)</label>
        <div>
        <div>
            <input type="date" id="dobmother" required="yes" name="dobmother">
        </div><br>
        <div class="submitdiv">
            <button class="submitbtn" type="Submit" name="submitbtn">Submit</button>
        </div>
        <cfif IsDefined("form.submitbtn") and IsDefined("form.dobuser") and IsDefined("form.dobmother")>
             <cfinvoke component="cfstudytask/Components/task5" method="fun_task5" returnvariable="task5result">
                <cfinvokeargument name="dobuser" value="#form.dobuser#">
                <cfinvokeargument name="dobmother" value="#form.dobmother#">                                          
             </cfinvoke><br> 
             <cfdump var="#task5result#">
        </cfif>
    </form>
</html>