<html>
    <head>       
        <link rel="stylesheet" href="../css/task1.css">    
        <link rel="stylesheet" href="../css/task4.css"> 
        <script src="../js/task12.js"></script>   
    </head>
    <body>
        <h2>TASK-12</h2>
        <h3>In SQL create a table with firstname & last name columns. insert 10 records into that table. 
            There is no primary key & numberic column in this table. Create a page with text box & submit button.  
            User can enter numeric value less than 10. While click on submit, you should show all data from table 
            as well as show Querys nth row first name column without looping. Here n is value of the user input.
        </h3>
        <form name="form" id="form" action="" method="post" onsubmit="return validate()">
            <div>
                <label>Text Box</label>
            <div>
            <div>
                <input type="text" id="textbox" name="textbox">
                <span  class="errorspan" id="errortext"></span> 
            </div><br>
            <div class="submitdiv">
                <input type="Submit" class="submitbtn" name="Submitbtn" value="Submit">
            </div>
            <cfif IsDefined("form.Submitbtn") and IsDefined("form.textbox")>                
                <cfinvoke component="cfstudytask/Components/task12" method="fun_task12" returnvariable="task12result">
                    <cfinvokeargument name="textbox" value="#form.textbox#">
                </cfinvoke>
                <cfoutput>
                    <cfif task12result EQ "1">
                        <cfinvoke component="cfstudytask/Components/task12" method="fun_task12sub" returnvariable="task12resultsub">
                        </cfinvoke>
                        <table>
                            <tr>
                                <th>SL:No</th>
                                <th>First Name</th>
                                <th>Last Name</th>
                            </tr>
                            <cfset local.slno=1>
                            <cfloop query="#task12resultsub#">
                                <tr>
                                    <td>#local.slno#</td>
                                    <td>#task12resultsub.firstname#</td>
                                    <td>#task12resultsub.lastname#</td>
                                </tr>
                                <cfset local.slno=local.slno+1>
                            </cfloop>                         
                            <cfinvoke component="cfstudytask/Components/task12" method="fun_task12nthrow" returnvariable="task12resultnthrow">
                                <cfinvokeargument name="textbox" value="#form.textbox#">
                            </cfinvoke>
                            <tr>
                                <td></td>
                                <th>The nth row (#form.textbox#)firstname is</th>
                                <td>#task12resultnthrow#</td>
                            </tr>
                        </table> 
                    </cfif>
                </cfoutput>  
            </cfif> 
        </form>
    </body>
</html>