<cfcomponent>
    <cffunction name="fun_task8" access="public">
		<cfargument name="textboxval1">
		<cfargument name="textboxval2">	
		<cfif StructKeyExists(session.structtask8, "#arguments.textboxval1#")>
			<cfset session.structtask8["#arguments.textboxval1#"] = "#arguments.textboxval2#">		
		<cfelse>
			<cfset value=StructInsert(session.structtask8, "#arguments.textboxval1#", "#arguments.textboxval2#")>
		</cfif>
    </cffunction>
</cfcomponent>