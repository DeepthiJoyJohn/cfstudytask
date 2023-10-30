<html>
    <head>       
        <link rel="stylesheet" href="../css/task1.css">    
        <link rel="stylesheet" href="../css/task4.css"> 
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">                      
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>       
    </head>
        <body>
            <form action="index.cfm" method="post">
                <h2>TASK-25</h2>
                <h3>
                    ColdFusion & DB
                    index.cfm
                        Contains a form
                        Contains a `text area` inside the form that takes any text input.
                        Contains a submit button that submits the form to self.
                        Form Contains no validation
                    tagCloud.cfc
                        Contains a constructor
                        Contains a function that takes a single text argument
                        Returns a struct
                    TABLE tags
                        Contains a Single column
                        Columns accepts only unique values
                        Table DOES NOT have a primary key
                    Task:
                    1. Write in Index.cfm, that will save the words in a given paragraph of text into the database as individual records. It means, each word is one row.
                        Ex: "India is huge country." 
                        This will create 4 rows in the table.
                </h3>
                <div>
                    <label>Text Area</label>
                <div>
                <div>
                    <textarea id="textarea" name="textarea"></textarea>
                </div>
                <div class="submitdiv"><br>
                    <button class="submitbtn" type="submit" name="submitbtn">Submit</button>
                </div>   
                <cfif StructKeyExists(form,"submitbtn")>
                    <cfset obj = createObject("component", "cfstudytask.Components.tagCloud")>
                    <cfset struct=obj.setstructure(#form.textarea#)>
                    <cfdump var="#struct#">
                     <cfdump var="#session.mystructure#">
                </cfif> 
            </form> 
        </body>
    </html>