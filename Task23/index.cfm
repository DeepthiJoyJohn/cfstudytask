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
            <form class="wufoo" enctype="multipart/form-data" onsubmit="return validate()">  
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
                <span class="errorspan" id="errorname"></span>
                <legend id="title19">
                    Are you willing to relocate?
                    <span  class="req">*</span>
                </legend>
                <span class="radio">
                    <input id="yes" name="yes" type="radio" value="Yes" tabindex="0">
                    <label>
                        Yes
                    </label>
                    <input id="no" name="no" type="radio" value="No" tabindex="0" >
                    <label>
                        No
                    </label>
                </span>
                <span class="errorspan" id="errorradio"></span>
                <label>
                    When can you start?
                    <span class="req">*</span>
                </label>
                <span class="radio">                        
                    <!--<input id="Field20-1" name="Field20-1" type="text"  value="" size="2" maxlength="2" tabindex="0">
                    <span>/</span>
                    <input id="Field20-2" name="Field20-2" type="text" value="" size="2" maxlength="2" tabindex="0">
                    <span>/</span>
                    <input id="Field20" name="Field20" type="text"  value="" size="4" maxlength="4" tabindex="0">-->
                    <input type="date" id="startdate" name="startdate">
                    <!--<img src="https://static.wufoo.com/images/icons/calendar.png" alt="Pick a date." data-date-format="yyyy-mm-dd" data-date="today">-->                                               
                </span>
                <!--<span class="radio">
                    <label>DD</label>
                    <span class="symbol"></span>
                    <label>MM</label>
                    <span class="symbol"></span>		                
                    <label>YYYY</label>
                </span>-->
                <label>
                    Portfolio Web Site
                </label>
                <div>
                    <input id="Field14" name="Field14"  value="http://" maxlength="255" tabindex="0" placeholder="">
                </div>
                <label>
                    Attach a Copy of Your Resume
                </label>
                <div>
                    <input id="Field12" name="Field12" type="file" class="field file" size="12" data-file-max-size="10" tabindex="0">
                </div>
                <p>
                    <small>Word or PDF Documents Only</small>
                </p>
                <label class="desc" id="title16">
                    Salary Requirements
                </label>
                <span class="radio">
                    $
                    <input id="Field16" name="Field16" type="text" value="" size="10" tabindex="0">
                    <span>.</span>
                    <input id="Field16-1" name="Field16-1" type="text" class="field text nospin" value="" size="2" maxlength="2" tabindex="0" oninput="this.value=this.value.replace(/[^0-9]/g, ''); handleInput(this);">
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
                        <input id="Field22" name="Field22" type="text"  value="" size="8" tabindex="0">
                        <input id="Field23" name="Field23" type="text" class="field text ln" value="" size="14" tabindex="0" placeholder="">		                    
                    </span>
                    <span class="radio">
                        <span class="symbol"></span>
                        <label for="Field22">First</label>
                        <span class="symbol"></span>
                        <label for="Field23">Last</label>
                    </span>
                    <label class="desc" id="title13" for="Field13">
                        Email Address
                        <span id="req_13" class="req">*</span>
                    </label>
                    <input id="Field13" name="Field13" type="email" spellcheck="false" class="field text large" value="" maxlength="255" tabindex="0" onkeyup="handleInput(this);" onchange="handleInput(this);" placeholder="">
                    <label>
                        Phone
                        <span id="req_25" class="req">*</span>
                    </label>
                    <span class="radio">
                        <input id="Field25" name="Field25" type="tel" value="" size="3" maxlength="3" tabindex="0" placeholder="">
                        <span>-</span>
                        <input id="Field25-1" name="Field25-1" type="tel"  value="" size="3" maxlength="3" tabindex="0" placeholder="">
                        <span>-</span>
                        <input id="Field25-2" name="Field25-2" type="tel"  value="" size="4" maxlength="4" tabindex="0" placeholder="">
                        
                    </span>
                    <span class="radio">
                        <label>###</label>
                        <span class="symbol"></span>
                        <label>###</label>
                        <span class="symbol"></span>
                        <label>####</label>
                    </span>                        
                    <input id="saveForm" name="saveForm" class="btTxt submit" type="submit" value="Submit" onmousedown="doSubmitEvents();">
                </section>            
            </form>
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