<html>
    <head>       
        <link rel="stylesheet" href="../css/task1.css">    
        <link rel="stylesheet" href="../css/task4.css">
        <!--<script src="../js/task22.js"></script>-->
    </head>
    <form>
        <body>
            <h2>TASK-22</h2>
            <h3>
                Show the below json info in table format.
                Json:
                [{"Name":"saravanan","Age":27,"LOCATION":"dubai"},{"Name":"Ram","Age":26,"LOCATION":"Kovilpatti"}] 
                Table format:
                Name 		Age 		Location
                Saravanan	27		Dubai
                Ram		26		Kovilpatti
            </h3>
                <cfinvoke component="cfstudytask/Components/task22" method="task22" returnvariable="result22">               
                </cfinvoke>
                <cfset local.result=deserializeJson(result22)>
                <cfoutput>
                    <table>
                        <tr>
                            <td>Name</td>
                            <td>Age</td>
                            <td>Location</td>
                        </tr> 
                        <cfloop from="1" to="#ArrayLen(local.result)#" index="i">
                            <tr>
                                <td>#local.result[i].Name#</td>
                                <td>#local.result[i].Age#</td>
                                <td>#local.result[i].LOCATION#</td>
                            </tr>
                        </cfloop>
                    </table>
                </cfoutput>
        </body>
    </form>
</html>