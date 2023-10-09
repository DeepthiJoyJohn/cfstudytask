<html>
    <head>       
        <link rel="stylesheet" href="../css/task4.css">       
    </head>    
    <h3>TASK-4</h3>
    <h4>TASK-4 (Show below details in a page
        Today's date, current Month in numeric, current month in word, Last friday date, Last day of month. Show Last 5 days date & day like below. 
        Sunday should be red, 
        Monday - green, 
        Tuesday - orange, 
        Wednesday - yellow, 
        Thursday - bold black, 
        Friday - blue, 
        Saturday - bold red

        02-Dec-2010 - Thursday
        01-Dec-2010 - Wednesday
        30-Nov-2010 - Tuesday
        29-Dec-2010 - Monday
        28-Dec-2010 - Sunday
        )
    </h4>
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