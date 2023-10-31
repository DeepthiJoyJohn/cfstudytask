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
                    2. Write another cfm page, that retrieves the records from database and tells the total number of times a word is present,
                        * Words with length less than 3 are not counted.
                        * Numbers are not counted and saved into the database.
                        * Result should be in decreasing order of the count of words
                        * Result should be in decreasing order of length of the text
                        * Result should be in alphabetical order
                        Ex: India is huge country. India has 29 states. Indians are nice. It has a nice climate.
                        Should return 
                        
                            - India (2)
                            - nice (2)
                            - has (2)
                            - country (1)
                            - Indians (1)
                            - huge (1)		 
                            - are (1)
                            - climate(1)
                            - states (1)                    
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
                                    <td>#result25.words#</td>
                                    <td>#session.mystructure[result25.words]#</td>
                                </tr>
                        </cfloop>
                    </table>
                </cfoutput> 
            </form> 
        </body>
    </html>