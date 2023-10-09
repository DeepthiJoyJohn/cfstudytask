<html>
    <head>       
        <link rel="stylesheet" href="../css/task1.css">  
        <link rel="stylesheet" href="../css/task4.css">      
    </head>
    <h3>TASK-5 <h3>
    <h4>(Get user & his mother date of birth. show users age & At what age his mother delivered him. Tell him how many days 
    are remaining for his & his mothers birthday.)</h4>
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
            <cfoutput>
                <table> 
                <cfloop index="key" array=#structKeyArray(task5result)#>
                        <tr>  
                            <th>#key#</th>                       
                            <td >#task5result[key]#</td>
                        </tr>
                </cfloop>
                </table>
            </cfoutput>
        </cfif>
    </form>
</html>