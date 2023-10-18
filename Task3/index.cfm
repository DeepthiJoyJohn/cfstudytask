<html>
    <head>       
        <link rel="stylesheet" href="../css/task1.css">       
    </head>
    <h3>TASK-3</h3>
    <h4>Create a page with text box & submit button. Input for the text box is "3,8,9,11,12"
        While click on submit, result page should show numbers divided by 3. So the result      
        must be 3,9,12. Should use cfcontinue in the appropriate place.
    </h4>
    <form action="index.cfm" method="post">
        <div>
            <label>Text Box</label>
        <div>
        <div>
            <input type="textbox" id="textbox" name="textbox">
        </div><br>
        <div class="submitdiv">
            <button class="submitbtn" type="Submit" name="submitbtn">Submit</button>
        </div>
        <cfif StructKeyExists(form,"submitbtn") and StructKeyExists(form,"textbox")>
             <cfinvoke component="cfstudytask/Components/task3" method="fun_task3" returnvariable="task3result">
                <cfinvokeargument name="textboxval" value="#form.textbox#">                     
             </cfinvoke><br> 
             <cfoutput>#task3result#</cfoutput>
        </cfif>
    </form>
</html>