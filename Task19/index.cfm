<html>
    <head>       
        <link rel="stylesheet" href="../css/task1.css">    
        <link rel="stylesheet" href="../css/task4.css">
    </head>
    <body>
        <h2>TASK-19</h2>
        <h3>
            Create a web page that will have one submit button. When submitted, the page will post to self. 
            Create a cookie named 'VisitsCounter' and every time the submit button is clicked and the page is posted, 
            the 'VisitsCounter' should be increased by 1 and the increased value is shown on the page.
        </h3>
        <form name="form" id="form" action="" method="post">           
            <div class="submitdiv">
                <input type="Submit" class="submitbtn" name="Submitbtn" value="Submit">
            </div>           
        </form>
        <cfif StructKeyExists(form,"Submitbtn")> 
            <cfinvoke component="cfstudytask/Components/task19" method="task19">
            </cfinvoke>
            <cfoutput>
                #cookie.VisitsCounter#
            </cfoutput>            
        </cfif> 
    </body>
</html>