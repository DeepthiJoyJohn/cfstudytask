<html>
    <head>       
        <link rel="stylesheet" href="../css/task1.css">    
        <link rel="stylesheet" href="../css/task4.css"> 
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">                      
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>       
    </head>
        <body>
            <form action="index.cfm" method="post">
                <h2>TASK-28</h2>
                <h3>
                   
                </h3>
                <div>
                    <label>User Name</label>
                <div>
                <div>
                    <input type="text" id="username" name="username" required>
                </div>
                <div>
                    <label>Password</label>
                <div>
                <div>
                    <input type="password" id="password" name="password" required>
                </div>
                <div class="submitdiv"><br>
                    <button class="submitbtn" type="submit" name="submitbtn">Submit</button>
                </div> 
            </form> 
            <cfif StructKeyExists(form,"submitbtn")>
                    <cfinvoke component="cfstudytask/Components/task28" method="task28" returnvariable="result28">
                        <cfinvokeargument name="username" value="#form.username#">
                        <cfinvokeargument name="password" value="#form.password#">
                    </cfinvoke> 
                    <cfif result28 EQ "admin">
                        <cflocation url="editpage.cfm">
                    <cfelseif result28 EQ "user">
                        <cflocation url="pagelist.cfm">
                    <cfelse>
                        <cfoutput><span class="errorspan">Wrong Credendials!!!!</span></cfoutput>
                    </cfif> 
            </cfif> 
        </body>
    </html>