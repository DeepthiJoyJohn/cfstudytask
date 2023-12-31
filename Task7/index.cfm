<html>
    <head>       
        <link rel="stylesheet" href="../css/task1.css">       
    </head>
    <h2>TASK-7</h2>
    <h3>Create a web page that will have two text boxes and a submit button. When submitted, the page will post to self.
        Create a structure in ColdFusion with the values from the text box. The text entered in textbox one is the key, and the text entered in textbox 2 is the value. Each time you submit the form, the values entered previously should also be shown. 
        It means, if I submit a form with 'ColdFusion', 'super', then I should see a dump with the key as 'ColdFusion' & value as 'Super'.
        Now, If I enter 'php', 'good', then I should see both ColdFusion, php on the screen along with their values.
        CFDUMP the structure.
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
            <cfinvoke component="cfstudytask/Components/task7" method="fun_task7">
                <cfinvokeargument name="textboxval1" value="#form.textbox1#">
                <cfinvokeargument name="textboxval2" value="#form.textbox2#">                                          
            </cfinvoke><br> 
            <cfdump var="#session.structtask7#">
        </cfif>
    </form>
</html>