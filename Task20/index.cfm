<html>
    <head>       
        <link rel="stylesheet" href="../css/task1.css">    
        <link rel="stylesheet" href="../css/task4.css">
        <script src="../js/task20.js"></script>
    </head>
    <body>
        <h2>TASK-20</h2>
        <h3>
            Create a page with two textboxes (captcha and email). Create captcha using cfimage tag.
            To validate the fields captcha(text validation) and email(email validation)using server 
            side validation.Once user entered the captcha  & clicked on submit,then check the entered 
            text is equal to captcha text.If correct then Page should show the message
            (Email Address successfully subscribe our newsletter)
        </h3>
        <cfoutput>
            <form name="form" id="form" action="" method="post" onsubmit="return validate()">             
                <cfset local.myRandomNumber=RandRange(1000,10000)>
                <cfset local.myRandomText="CF#local.myRandomNumber#">           
                <cfset local.functionImage = ImageCreateCaptcha(35,400,"#local.myRandomText#")> 
                <input type="hidden" name="captchaText" value="#local.myRandomText#">
                <cfimage action="writetoBrowser" source="#local.functionImage#">
                <div>
                    <label>Captcha</label>
                <div>
                <div>
                    <input type="text" id="captcha" name="captcha">
                    <span  class="errorspan" id="errorcaptcha"></span> 
                </div>
                <div>
                    <label>Email</label>
                <div>
                <div>
                    <input type="text" id="email" name="email">
                    <span  class="errorspan" id="erroremail"></span> 
                </div>
                <div class="submitdiv"><br>
                    <input type="Submit" class="submitbtn" name="Submitbtn" value="Submit">
                </div> 
            </form>
            <cfif StructKeyExists(form,"Submitbtn")> 
                <cfinvoke component="cfstudytask/Components/task20" method="task20" returnvariable="result20">
                    <cfinvokeargument name="captcha" value="#form.captcha#">
                    <cfinvokeargument name="email" value="#form.email#">
                    <cfinvokeargument name="captchaText" value="#form.captchaText#">
                </cfinvoke>
                #result20# 
            </cfif> 
        </cfoutput>
    </body>
</html>