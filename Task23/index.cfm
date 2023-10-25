<html>
    <head>       
        <link rel="stylesheet" href="../css/task1.css">    
        <link rel="stylesheet" href="../css/task4.css">
        <link rel="stylesheet" href="../css/task23.css">
        <!--<script src="../js/task23.js"></script>-->
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
                        <a href="https://www.wufoo.com/?utm_source=form-header&amp;utm_medium=logo" target="_blank" title="Powered by Wufoo"><span class="visuallyhidden">Wufoo</span></a>
                    </h1>
                    <form class="wufoo">  
                    <header id="header" class="info">
                        <h2 class="">Employment Application</h2>
                        <div class="">Infinity Box Inc.</div>
                    </header>
                    <label class="desc notranslate" id="title17" for="Field17">
                        Which position are you applying for?
                        <span id="req_17" class="req">*</span>
                    </label>
                    <select id="Field17" name="Field17" class="field select medium" onchange="handleInput(this);" onkeyup="handleInput(this);" tabindex="0" data-wufoo-field="dropdown">
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
                    <legend id="title19" class="desc notranslate">
                        Are you willing to relocate?
                        <span id="req_19" class="req">*</span>
			        </legend>
                    <input id="Field19_0" name="Field19" type="radio" class="field radio" value="Yes" tabindex="0" onchange="handleInput(this);" onmouseup="handleInput(this);" checked="checked" required="">
                    <label class="choice" for="Field19_0">
                        <span class="choice__text notranslate">Yes</span>
                        <span class="choice__qty">
                        </span>
                    </label>
                    <input id="Field19_1" name="Field19" type="radio" class="field radio" value="No" tabindex="0" onchange="handleInput(this);" onmouseup="handleInput(this);" required="">
                    <label class="choice" for="Field19_1">
                        <span class="choice__text notranslate">No</span>
                        <span class="choice__qty">
                        </span>
                    </label>
                    <label class="desc" id="title20">
		                When can you start?
				        <span id="req_20" class="req">*</span>
			        </label>
                    <span>
		                <input id="Field20-1" name="Field20-1" type="text" class="field text" value="" size="2" maxlength="2" tabindex="0" onkeyup="handleInput(this);" onchange="handleInput(this);" required="">
		                <label for="Field20-1">MM</label>
	                </span>
                    <span class="symbol">/</span>
                    <span>
		                <input id="Field20-2" name="Field20-2" type="text" class="field text" value="" size="2" maxlength="2" tabindex="0" onkeyup="handleInput(this);" onchange="handleInput(this);" required="">
		                <label for="Field20-2">DD</label>
	                </span>
                    <span class="symbol">/</span>
                    <span>
	 	                <input id="Field20" name="Field20" type="text" class="field text" value="" size="4" maxlength="4" tabindex="0" onkeyup="handleInput(this);" onchange="handleInput(this);" required="">
		                <label for="Field20">YYYY</label>
	                </span>
                    <span id="cal20">
		                <img id="pick20" class="datepicker" src="https://static.wufoo.com/images/icons/calendar.png" alt="Pick a date." data-date-format="yyyy-mm-dd" data-date="today">
	                </span>
                    <label class="desc" id="title14" for="Field14">
                        Portfolio Web Site
                    </label>
                    <div>
		                <input id="Field14" name="Field14" type="url" class="field text large" value="http://" maxlength="255" tabindex="0" onkeyup="handleInput(this);" onchange="handleInput(this);" placeholder="">
	                </div>
                    <label class="desc" id="title12" for="Field12">
		                Attach a Copy of Your Resume
			        </label>
                    <div>
		                <input id="Field12" name="Field12" type="file" class="field file" size="12" data-file-max-size="10" tabindex="0" data-wufoo-field="file-upload">
	                </div>
                    <p class="instruct" id="instruct12">
			            <small>Word or PDF Documents Only</small>
		            </p>
                    <label class="desc" id="title16">
		                Salary Requirements
			        </label>
                    <span class="symbol">$</span>
                    <span>
                        <input id="Field16" name="Field16" type="text" class="field text currency nospin" value="" size="10" tabindex="0" oninput="this.value=this.value.replace(/[^0-9]/g, ''); handleInput(this);">
                        <label for="Field16">Dollars</label>
                    </span>
                    <span>
                        <span class="symbol radix">.</span>
                        <input id="Field16-1" name="Field16-1" type="text" class="field text nospin" value="" size="2" maxlength="2" tabindex="0" oninput="this.value=this.value.replace(/[^0-9]/g, ''); handleInput(this);">
                        <label for="Field16-1">Cents</label>
                    </span>
                    <section>
                        <h3 id="title24">
                            Your Contact Information
                        </h3>
                        <label class="desc" id="title22">
		                    Name
				            <span id="req_22" class="req">*</span>
			            </label>
                        <span>
		                    <input id="Field22" name="Field22" type="text" class="field text fn" value="" size="8" tabindex="0" onkeyup="handleInput(this);" onchange="handleInput(this);" placeholder="" required="">
		                    <label for="Field22">First</label>
	                    </span>
                        <span>
		                    <input id="Field23" name="Field23" type="text" class="field text ln" value="" size="14" tabindex="0" onkeyup="handleInput(this);" onchange="handleInput(this);" placeholder="" required="">
		                    <label for="Field23">Last</label>
	                    </span>
                        <label class="desc" id="title13" for="Field13">
		                    Email Address
				            <span id="req_13" class="req">*</span>
			            </label>
                        <input id="Field13" name="Field13" type="email" spellcheck="false" class="field text large" value="" maxlength="255" tabindex="0" onkeyup="handleInput(this);" onchange="handleInput(this);" placeholder="" required="">
                        <label class="desc" id="title25">
		                    Phone
				            <span id="req_25" class="req">*</span>
			            </label>
                        <span>
		                    <input id="Field25" name="Field25" type="tel" class="field text" value="" size="3" maxlength="3" tabindex="0" onkeyup="handleInput(this); autotab(this, document.getElementById('Field25-1'), this); filterNonnumeric(this);" onchange="handleInput(this);" onfocus="this.selectionStart = this.selectionEnd = this.value.length;" placeholder="" required="">
		                    <label for="Field25">###</label>
	                    </span>
                        <span class="symbol">-</span>
                        <span>
		                    <input id="Field25-1" name="Field25-1" type="tel" class="field text" value="" size="3" maxlength="3" tabindex="0" onkeyup="handleInput(this); autotab(this, document.getElementById('Field25-2'), document.getElementById('Field25')); filterNonnumeric(this);" onchange="handleInput(this);" onfocus="this.selectionStart = this.selectionEnd = this.value.length;" placeholder="" required="">
		                    <label for="Field25-1">###</label>
	                    </span>
                        <span class="symbol">-</span>
                        <span>
	 	                    <input id="Field25-2" name="Field25-2" type="tel" class="field text" value="" size="4" maxlength="4" tabindex="0" onkeyup="handleInput(this); autotab(this, this, document.getElementById('Field25-1')); filterNonnumeric(this);" onchange="handleInput(this);" onfocus="this.selectionStart = this.selectionEnd = this.value.length;" placeholder="" required="">
		                    <label for="Field25-2">####</label>
	                    </span>
                        <input id="saveForm" name="saveForm" class="btTxt submit" type="submit" value="Submit" onmousedown="doSubmitEvents();">
			        </section>
                </div>
                
                
            </form>
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