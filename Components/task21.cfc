<cfcomponent>   
	<cffunction name="task21" access="public">
		<cfargument name="name">
		<cfargument name="email">
		<cfargument name="bdaywish">
		<cfargument name="filename">
		<cfset local.filepath="C:\ColdFusion2021\cfusion\wwwroot\cfstudytask\Images\Mail">
        <cffile action="upload" fileField="filename" destination="#local.filepath#" nameConflict="overwrite">
		<cfmail to = "#arguments.email#" from ="deepthi.joy@techversantinfotech.com" subject = "Birthday Wishes to #arguments.name#" mimeattach="cfstudytask/Images/Mail/#serverFile#"> 
			#arguments.bdaywish#
		</cfmail> 
		<cfreturn "mail sent">
	</cffunction>	
</cfcomponent>