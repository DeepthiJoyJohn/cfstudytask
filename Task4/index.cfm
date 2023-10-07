<html>
    <head>       
        <link rel="stylesheet" href="../css/task4.css">       
    </head>    
    <h3>TASK-4 (DAYS) </h3>
    <form action="index.cfm" method="post">
        <cfinvoke component="cfstudytask/Components/task4" method="fun_task4" returnvariable="task4result">
        </cfinvoke><br> 
        <cfoutput>
            <cfset daysOfWeek = "Sunday,Monday,Tuesday,Wednesday,Thursday,Friday,Saturday">
            <table> 
                <cfloop index="key" array=#structKeyArray(task4result)#>
                    <tr>
                        <cfif ListFindNoCase(daysOfWeek, key)>
                            <th>Last Days of Month</th>
                        <cfelse>
                            <th>#key#</th>
                        </cfif>
                        <td class="#Key#">#task4result[key]#</td>
                    </tr>
                </cfloop>
            </table>
        </cfoutput>
    </form>
</html>