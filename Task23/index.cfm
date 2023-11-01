<html>
    <head>       
        <link rel="stylesheet" href="../css/task1.css">    
        <link rel="stylesheet" href="../css/task4.css">
        <link rel="stylesheet" href="../css/task23.css">
        <script src="../js/task23.js"></script>
    </head>
    <body>   
        <h2>TASK-23</h2>
        <h3>
            Design the form as like
            https://examples.wufoo.com/forms/employment-application/
            Add javascript validation for all required fields (which will have red * in the label).
            While clicking on the Submit button, data needs to be saved into Database. Database code should be in CFC.
        </h3>
        <div id="container" class="ltr">
            <h1 id="logo">
                <img src="https://static.wufoo.com/images/wflogo-padding.png">
            </h1>
            <form  name="form" id="form" action="" method="post" class="wufoo" enctype="multipart/form-data" onsubmit="return validate()">  
                <header id="header" class="info">
                    <h2 class="">Employment Application</h2>
                    <div class="">Infinity Box Inc.</div>
                </header>
                
                <label>
                    Which position are you applying for?
                    <span class="req">*</span>
                </label>
                <select id="position" name="position"  tabindex="0">
                    <option value="" selected="selected">				
                    </option>
                    <option value="Interface Designer">
                        Interface Designer
                    </option>
                    <option value="Software Engineer">
                        Software Engineer
                    </option>
                    <option value="System Administrator">
                        System Administrator
                    </option>
                    <option value="Office Manager">
                        Office Manager
                    </option>
                </select>
                <span class="errorspan1" id="errorname"></span>
                <legend id="title19">
                    Are you willing to relocate?
                    <span  class="req">*</span>
                </legend>
                <span class="radio">
                    <input id="yes" name="radio" type="radio" value="Yes">
                    <label>
                        Yes
                    </label>
                    <input id="no" name="radio" type="radio" value="No">
                    <label>
                        No
                    </label>
                    <button onclick = "clearRadio()"> Uncheck Radio </button>
                </span>
                <span class="errorspan" id="errorradio"></span>
                <label>
                    When can you start?
                    <span class="req">*</span>
                </label>
                <input id="startdate" name="startdate" type="date" value="">
                 <span class="errorspan" id="errorstartdate"></span>
                <label>
                    Portfolio Web Site
                </label>
                <div>
                    <input id="website" name="website"  value="http://" maxlength="255">
                </div>
                <label>
                    Attach a Copy of Your Resume
                </label>
                <div>
                    <input id="resume1" name="resume1" type="file"  size="12">
                </div>
                <p>
                    <small>Word or PDF Documents Only</small>
                </p>
                <label class="desc" id="title16">
                    Salary Requirements
                </label>
                <span class="radio">
                    $
                    <input id="dollar" name="dollar" type="text" value="" size="10" tabindex="0"  oninput="this.value=this.value.replace(/[^0-9]/g, '');" maxlength="4">
                    <span>.</span>
                    <input id="cents" name="cents" type="text"  value="" size="2" maxlength="2" tabindex="0" oninput="this.value=this.value.replace(/[^0-9]/g, '');"  maxlength="2">
                </span>
                <span class="radio">
                    <span class="symbol"></span>
                    <label>Dollars</label>
                    <span class="symbol"></span>
                    <label>Cents</label>
                </span>                    
                <section>
                    <h3>
                        Your Contact Information
                    </h3>
                    <label>
                        Name
                        <span class="req">*</span>
                    </label>
                    <span>
                        <input id="firstname" name="firstname" type="text"  value="" size="8" >
                        <input id="lastname" name="lastname" type="text" value="" size="14">
                    </span>
                    <span>
                        <span class="errorspan" id="errorfirstname"></span>
                    </span>
                    <span class="radio">
                        <span class="symbol"></span>
                        <label>First</label>
                        <span class="symbol"></span>
                        <label>Last</label>
                    </span>
                    <label class="desc" id="title13">
                        Email Address
                        <span id="req_13" class="req">*</span>
                    </label>
                    <input id="email" name="email" type="email" value="" maxlength="255">
                    <span class="errorspan" id="erroremail"></span>
                    <label>
                        Phone
                        <span id="req_25" class="req">*</span>
                    </label>
                    <span class="radio">
                        <input id="phone1" name="phone1" type="tel" value="" size="3" maxlength="3">
                        <span>-</span>
                        <input id="phone2" name="phone2" type="tel"  value="" size="3" maxlength="3">
                        <span>-</span>
                        <input id="phone3" name="phone3" type="tel"  value="" size="4" maxlength="4">
                    </span>
                    <span class="errorspan" id="errorphone"></span>
                    <span class="radio">
                        <label>###</label>
                        <span class="symbol"></span>
                        <label>###</label>
                        <span class="symbol"></span>
                        <label>####</label>
                    </span>                        
                    <input type="Submit" class="submitbtn" name="Submitbtn" value="Submit">
                </section> 
                        
            </form>
            <cfif StructKeyExists(form,"Submitbtn")> 
                <cfinvoke component="cfstudytask/Components/task23" method="task23" returnvariable="result23">
                <cfinvokeargument name="form" value="#form#">
                
            </cfinvoke>
                <cfoutput>#result23#</cfoutput>
            </cfif> 
        </div>
        <style type="text/css">
            @import url(https://static.wufoo.com/stylesheets/ads/css/power.0688.css);
        </style>
        <a class="powertiny" href="https://www.wufoo.com/?utm_source=form-footer&amp;utm_medium=logo" target="_blank" title="Powered by Wufoo" style="display:block !important;visibility:visible !important;text-indent:0 !important;position:relative !important;height:auto !important;width:100px !important;overflow:visible !important;text-decoration:none;cursor:pointer !important;margin:0 auto !important;">
            <b style="display:block !important;visibility:visible !important;text-indent:0 !important;position:static !important;height:auto !important;width:auto !important;overflow: auto !important;font-weight:normal;font-size:10px;color:#606060 !important;">Powered By</b>
            <img src="https://static.wufoo.com/assets/images/logos/wufoo/wufoo-logo-500x210.png" width="100" alt="Wufoo">
        </a>
        <span style="position:relative !important; display:block !important;visibility:visible !important; height:auto !important;width:auto !important;overflow: auto !important; color: #606060 !important; font-size: 12px !important; padding-bottom: 50px !important;">See how easy it is to <a href="https://www.wufoo.com/form-builder/?utm_source=form-footer&amp;utm_medium=cta-link" target="_blank">create a form</a>.</span>
    </body>
</html>