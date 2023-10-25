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
        <cfset task16obj = createObject("component", "cfstudytask.Components.task16")>
        <cfset res = task16obj.task16()>
        <cfoutput>#res#</cfoutput>
    </form>
    </body>
</html>