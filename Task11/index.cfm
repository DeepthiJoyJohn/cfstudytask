<html>
    <head>       
        <link rel="stylesheet" href="../css/task1.css">    
        <link rel="stylesheet" href="../css/task4.css">   
    </head>
    <body>
    <h2>TASK-11</h2>
    <h3>Create a cfm page with a function named multiply. It should give results for the following function calls.</h3>
    <form>
        <cfset task11obj = createObject("component", "cfstudytask.Components.task11")>
        <cfset res = task11obj.mulitiply(1,2)>
        <table>
            <tr>
                <th>Result of mulitiply(1,2)</th>
                <td><cfdump var="#task11obj.mulitiply(1,2)#"></td>
            </tr>
            <tr>
                <th>Result of mulitiply(1,2,3)</th>
                <td><cfdump var="#task11obj.mulitiply(1,2,3)#"></td>
            </tr>
            <tr>
                <th>Result of mulitiply(1,2,3,4)</th>
                <td><cfdump var="#task11obj.mulitiply(1,2,3,4)#"></td>
            </tr>        
        </table>
    </form>
    </body>
</html>