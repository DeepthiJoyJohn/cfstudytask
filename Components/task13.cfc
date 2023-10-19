<cfcomponent>   
	<cffunction name="fun_task13" access="public">
		<cfargument name="textbox">
		<cfset local.string="the quick brown fox jumps over the lazy dog">
		<cfset local.occurrences= (Len(local.string) -Len(Replace(local.string,arguments.textbox,'','all')))/ Len(arguments.textbox)>
		<cfreturn local.occurrences>
	</cffunction>	
</cfcomponent>