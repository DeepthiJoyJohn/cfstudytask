<cfcomponent>
    <cffunction name="fun_task7" access="public">
		<cfargument name="textboxval1">
		<cfargument name="textboxval2">		
		<cfset value=StructInsert(application.structtask7, "#arguments.textboxval1#", "#arguments.textboxval2#")>          	
		<cfreturn application.structtask7>
    </cffunction>
</cfcomponent>