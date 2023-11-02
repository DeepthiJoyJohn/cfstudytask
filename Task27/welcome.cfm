<html>
    <head>       
        <link rel="stylesheet" href="../css/task1.css">    
        <link rel="stylesheet" href="../css/task27.css"> 
        <script src="../js/task28.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">                      
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>       
    </head>
    <body>
        <form action="welcome.cfm" method="post">
            <cfif NOT isDefined("session.username")>
                <cflocation url="index.cfm">
            </cfif> 
            <center>
                <img src="../Images/backgrd.jpg">
            </center> 
            <button class="button" type="submit" name="submitbtn">Logout</button>
        </form>
        <cfif StructKeyExists(form,"submitbtn")>
            <cfset StructDelete(session, "username")>
            <cflocation url="index.cfm">

        </cfif>
    </body>
</html>