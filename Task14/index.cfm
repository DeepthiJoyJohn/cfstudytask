<html>
    <head>       
        <link rel="stylesheet" href="../css/task1.css"> 
        <link rel="stylesheet" href="../css/task14.css"> 
        <link rel="stylesheet" href="../css/task4.css"> 
        <script src="../js/task14.js"></script>     
    </head>
    <body>
    <h2>TASK-14</h2>
    <h3>
        Create a form with Image name text box , description text area & Image upload field.
        User can upload only small size jpg,png and gif files. Add validation to check uploaded file type & file size.
        User should not upload a image which is greater than 1 MB. Once user uploaded a image,create a 
        thumbnail image (20*20 size) from uploaded images. In list page, show thumbnail image & image name. 
        While clicking on the image name, it should redirect the user to details page which will show image name, 
        description & original uploaded image.
    </h3>
    <form name="form" id="form" action="" method="post" enctype="multipart/form-data" onsubmit="return validate()">
        <body>
            <table>
                <tr>
                    <td>
                        <label>Image Name</label>
                    </td>
                    <td>
                        <input type="text" id="imagename" name="imagename">
                        <span class="errorspan" id="errortext1"></span>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Image Description</label>
                    </td>
                    <td>
                        <textarea id="imagedescription" name="imagedescription" rows="4" cols="50">
                        </textarea>
                        <span class="errorspan" id="errortext2"></span>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Image Upload</label>
                    </td>
                    <td>
                        <input type="file" id="filename" name="filename">
                        <span class="errorspan" id="errortext3"></span>
                    </td>
                </tr>
                <tr>
                    <td>
                        <button class="submitbtn" type="Submit" name="submitbtn">Submit</button>
                    </td>
                </tr>
            </table>
        </body>    
    </form>
    <cfif StructKeyExists(form,"Submitbtn")>  
        <cfinvoke component="cfstudytask/Components/task14" method="task14" returnvariable="result14">
            <cfinvokeargument name="imagename" value="#form.imagename#">
            <cfinvokeargument name="imagedescription" value="#form.imagedescription#">  
            <cfinvokeargument name="filename" value="#form.filename#">                                         
        </cfinvoke> 
        <cfoutput>
            <table>
                <tr>
                    <td>Image</td>
                    <td>Image Name</td>
                </tr>
                <cfloop query="result14">
                    <tr>                       
                        <td><img src="..\Images\thumbnail\#result14.uploadedimgname#"></td>
                         <td><a href="imagedetail.cfm?imageid=#result14.id#">#result14.imagename#</a></td>
                    </tr>  
                </cfloop>   
            </table> 
        </cfoutput>       
    </cfif> 
    </body>
</html>