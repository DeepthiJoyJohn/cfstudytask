<html>
    <head>       
        <link rel="stylesheet" href="../css/task1.css">    
        <link rel="stylesheet" href="../css/task4.css"> 
        <script src="../js/task26.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">                      
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>       
    </head>
        <body>
            <form action="index.cfm" method="post" enctype="multipart/form-data" onsubmit="validate()">
                <h2>TASK-26</h2>
                <h3>
                    ColdFusion & DB
                    ------------------
                    In CF_DB_WordCount_1 task, rather than using a text area, 
                    you should read from a uploaded txt file

                </h3>
                <div>
                    <label>Upload File(Text File)</label>
                <div>
                <div>
                    <input type="file" name="fileUpload" id="fileUpload" required="yes"/>
                    <span class="errorspan" id="errorspan"></span>
                </div>
                <div class="submitdiv"><br>
                    <button class="submitbtn" type="submit" name="submitbtn">Submit</button>
                </div>
                
                
            </form>
            <cfif StructKeyExists(form,"submitbtn") AND form.fileUpload NEQ "">
                <cfinvoke component="cfstudytask/Components/tagCloud" method="readfromupload">
                    <cfinvokeargument name="fileUpload" value="#form.fileUpload#"> 
                </cfinvoke>
                <cfdump var="#session.mystructure#">
            </cfif>  
        </body>
    </html>