<html>
    <head>       
        <link rel="stylesheet" href="../css/task1.css">    
        <link rel="stylesheet" href="../css/task4.css">   
    </head>
    <body>
        <h2>TASK-18</h2>
        <h3>
            Need to create a query data type variable manually with out using cfquery tag. Need to use neccesary query functions.
            Query will have 3 columns
            ID - Number 
            Name - String
            email	- String
            This Query variable should have 3 rows of data.
        </h3>
        <form>
            <cfinvoke component="cfstudytask/Components/task18" method="task18" returnvariable="result18">
            </cfinvoke>
            <cfdump var="#result18#">
        </form>
    </body>
</html>