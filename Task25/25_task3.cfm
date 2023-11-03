<html>
    <head>       
        <link rel="stylesheet" href="../css/task1.css">    
        <link rel="stylesheet" href="../css/task4.css"> 
        <link rel="stylesheet" href="../css/task25.css"> 
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
                        Tag cloud: Write another cfm page, this is enhancement of task 2
	                    Depending on the number of times a word is present in the given text, the size of the word should be increased. 
	                    Hint: Use relative font sizes from CSS properties.
	                    Bonus Point: Use different colors.
                </h3>
                <cfinvoke component="cfstudytask/Components/tagCloud" method="fromdb" returnvariable="result25">
                <cfoutput>
                    <table>
                        <tr>
                            <td><b>Words</b></td>
                            <td><b>occurence</b></td>
                        </tr>
                        <cfloop query="#result25#">
                                <tr>
                                    <td><span class="class#countofstring#">#words#</span></td>
                                    <td><span class="class#countofstring#">#countofstring#</span></td>
                                </tr>
                        </cfloop>
                    </table>
                    
                </cfoutput> 
            </form> 
        </body>
    </html>