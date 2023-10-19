<html>
    <head>       
        <link rel="stylesheet" href="../css/task1.css">       
    </head>
    <h2>TASK-9</h2>
    <h3>Create a web page that will have two text boxes and a submit button. When submitted, the page will post to self.
        Create a structure in ColdFusion with the values from the text box. The text entered in text box one is the key, and the text entered in text box 2 is the value. Each time you submit the form, the values entered previously should also maintained in the structure.
        It means, if I submit a form with 'ColdFusion', 'super', then structure should have key as 'ColdFusion' & value as 'Super'.
        Now, If I enter 'php', 'good', then structure should have both ColdFusion, php along with their values.
        CFDUMP the structure.This is different from CF_Struct_3 task. If I enter ColdFusion and ColdFusion is already present, then the system should say, 'ColdFusion already present. Cannot add again'
    </h3>
    <form action="index.cfm" method="post">
        <div>
            <label>Text Box 1(key)</label>
        <div>
        <div>
            <input type="textbox" id="textbox1" name="textbox1">
        </div><br>
        <div>
            <label>Text Box 2(value)</label>
        <div>
        <div>
            <input type="textbox" id="textbox2" name="textbox2">
        </div><br>
        <div class="submitdiv">
            <button class="submitbtn" type="Submit" name="submitbtn">Submit</button>
        </div>
        <cfif StructKeyExists(form,"submitbtn") and StructKeyExists(form,"textbox1") and StructKeyExists(form,"textbox2")>
            <cfinvoke component="cfstudytask/Components/task9" method="fun_task9" returnvariable="task9result">
                <cfinvokeargument name="textboxval1" value="#form.textbox1#">
                <cfinvokeargument name="textboxval2" value="#form.textbox2#">                                          
            </cfinvoke><br> 
            <cfif task9result EQ "Cannot Add">
                <cfoutput>Key Already Present Cannot Add Again</cfoutput>
            <cfelseif task9result EQ "Key Null">
                <cfoutput>Key Cannot be Null</cfoutput>    
            <cfelse>
                <cfdump var="#session.structtask9#">
            </cfif>
        </cfif>
    </form>
</html>