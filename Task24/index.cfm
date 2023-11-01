<html>
    <head>       
        <link rel="stylesheet" href="../css/task1.css">    
        <link rel="stylesheet" href="../css/task4.css"> 
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">                      
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>       
    </head>
        <body>
            <form>
                <h2>TASK-24</h2>
                <h3>
                    Create a subscribe form with first name, Email id text boxes.Near email id text box, 
                    check button should be there.Below these text boxes submit button should be there. 
                    By default the submit button should be disabled. While clicking that, check mail id in
                    Database using Ajax. If the user entered the mail id there, then it would give an error 
                    message like "Mail id is already there". If not, enable the submit button. While clicking 
                    on the submit button it will insert first name & email id into the database.
                </h3>
                <div>
                    <label>First Name</label>
                <div>
                <div>
                    <input type="text" id="firstname" name="firstname" required>
                    <span  class="errorspan" id="errorname"></span> 
                </div>
                <div>
                    <label>Email</label>
                <div>
                <div>
                    <input type="text" id="email" name="email" required>
                    <button type="button" class="checkbtn" onclick="checkdatabase()"><i class="fa fa-check" aria-hidden="true"></i></button>
                    <span  class="errorspan" id="erroremail"></span> 
                    <span id="errorspan" class="errorspan"></span>
                </div>
                <div class="submitdiv"><br>
                    <input type="submit" class="submitbtn" onclick="insertdata()" id="submitbtn" name="Submitbtn"  value="Submit">
                </div>   
            </form>        
        </body>
        <script src="../js/task24.js"></script>
</html>