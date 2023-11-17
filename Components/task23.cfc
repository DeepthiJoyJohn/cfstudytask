<cfcomponent>   
	<cffunction name="task23" access="public" returntype="text">
		<cfargument name="form">
		<cfset local.filepath=ExpandPath("..\Resumes\")>
		<cfset local.filename="">
		<cfif StructKeyExists(form,"resume1")>
			<cffile action="upload" fileField="resume1" destination="#local.filepath#" nameConflict="overwrite">
			<cfset local.filename="#cffile.serverFile#">
		</cfif>
		<cfset local.phone=arguments.form.phone1&arguments.form.phone2&arguments.form.phone3>
        
		 <cfquery name="insert" datasource="#application.datasoursename#">
                INSERT 
                INTO applicationform(firstname,lastname,position,relocate,startdate,website,resume1,dollar,cents,email,phone)
                VALUES 
                (<cfqueryparam value="#arguments.form.firstname#" cfsqltype="CF_SQL_varchar">,
				 <cfqueryparam value="#arguments.form.lastname#" cfsqltype="CF_SQL_varchar">,
				 <cfqueryparam value="#arguments.form.position#" cfsqltype="CF_SQL_varchar">,
				 <cfqueryparam value="#arguments.form.radio#" cfsqltype="CF_SQL_varchar">,
				 <cfqueryparam value="#arguments.form.startdate#" cfsqltype="CF_SQL_date">,
				 <cfqueryparam value="#arguments.form.website#" cfsqltype="CF_SQL_varchar">,
				 <cfqueryparam value="#local.filename#" cfsqltype="CF_SQL_varchar">,
				 <cfqueryparam value="#arguments.form.dollar#" cfsqltype="CF_SQL_integer">,				 
				 <cfqueryparam value="#arguments.form.cents#" cfsqltype="CF_SQL_integer">,
				 <cfqueryparam value="#arguments.form.email#" cfsqltype="CF_SQL_varchar">,
				 <cfqueryparam value="#local.phone#" cfsqltype="CF_SQL_varchar">)
        </cfquery> 
		<cfreturn "Data saved Successfully">
	</cffunction>
	<cffunction name="getPosition" access="public" returntype="query">
		<cfquery name="qToGetPosition" datasource="#application.datasoursename#">
			SELECT * 
			FROM position
		</cfquery>
		<cfreturn qToGetPosition>
	</cffunction>	
</cfcomponent>