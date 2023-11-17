<html>
    <head>       
        <link rel="stylesheet" href="../css/task1.css">    
        <link rel="stylesheet" href="../css/task4.css">   
    </head>
    <body>
    <h2>TASK-16</h2>
    <h3>Write a CF program to print data by 3 rows and 3 columns like the example below.
        1    4    7
        2    5    8
        3    6    9
    </h3>
    <form>       
        <cfoutput>
            <table>
                <cfloop from="1" to="3" index="i">
                    <tr>
                        <td>#i#</td>
                        <td>#i+3#</td>
                        <td>#i+6#</td>
                    </tr>
                </cfloop>
            </table>
        </cfoutput>
    </form>
    </body>
</html>