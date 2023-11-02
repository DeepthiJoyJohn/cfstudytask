<html>
    <head>       
        <link rel="stylesheet" href="../css/task1.css">    
        <link rel="stylesheet" href="../css/task4.css"> 
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">                      
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>       
    </head>
        <body>
            <form action="index.cfm" method="post">
                <h2>TASK-27</h2>
                <h3>
                    Login page with user name & password. Once a user enters the correct details, it should redirect to welcome.cfm, 
                    if not, it will show an error message in the login page. If any one of the users, directly access the welcome.cfm 
                    without login, Application should redirect the user in to log in page.In welcome page, there must be a logout link, 
                    which will log out the user from the application & redirect to log in page.
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
                    <cfinvoke component="cfstudytask/Components/task27" method="task27" returnvariable="result27">
                        <cfinvokeargument name="username" value="#form.username#">
                        <cfinvokeargument name="password" value="#form.password#">
                    </cfinvoke> 
                    <cfif result27 EQ "1">
                        <cfset session.username="#form.username#">
                        <cflocation url="welcome.cfm">
                    <cfelse>
                        <cfoutput><span class="errorspan">Wrong Credendials!!!!</span></cfoutput>
                    </cfif> 
            </cfif> 
        </body>
    </html>