<html>
    <head>       
        <link rel="stylesheet" href="../css/task1.css">    
        <link rel="stylesheet" href="../css/task4.css">
        <script src="../js/task20.js"></script>
    </head>
    <body>
        <h2>TASK-20</h2>
        <h3>
            Create a birthday wishes page which contains the following fields.
            Birthday Baby Name: Text box
            His Email Id :	Text box
            Birthday Wishes: Text area
            Greeting image : File upload field
            While clicking on the submit, it should send greeting mail to the birthday guy’s mail id. 
            Greeting images should be in attachment along with mail.
        </h3>
        <form name="form" id="form" action="" method="post" onsubmit="return validate()">           
            
            <div>
                <label>Birthday Baby Name</label>
            <div>
            <div>
                <input type="text" id="name" name="name">
                <span  class="errorspan" id="errorname"></span> 
            </div>
            <div>
                <label>Email</label>
            <div>
            <div>
                <input type="text" id="email" name="email">
                <span  class="errorspan" id="erroremail"></span> 
            </div>
            <div>
                <label>Birthday Wish</label>
            <div>
            <div>
                <textarea name="bdaywish" id="bdaywish"></textarea>
                <span  class="errorspan" id="errorbdaywish"></span> 
            </div>
            <div>
                <label>Upload Image</label>
            <div>
            <div>
                <input type="file" id="filename" name="filename">
                <span  class="errorspan" id="errorimage"></span> 
            </div>
            <div class="submitdiv"><br>
                <input type="Submit" class="submitbtn" name="Submitbtn" value="Submit">
            </div>           
        </form>
        <cfif StructKeyExists(form,"Submitbtn")> 
            <cfinvoke component="cfstudytask/Components/task20" method="task20" returnvariable="result20">
                <cfinvokeargument name="captcha" value="#form.captcha#">
                <cfinvokeargument name="email" value="#form.email#">
            </cfinvoke>
            <cfoutput>#result20#</cfoutput>
        </cfif> 
    </body>
</html>