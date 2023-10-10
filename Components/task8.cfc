<cfcomponent>
    <cffunction name="fun_task8" access="public">
		<cfargument name="textboxval1">
		<cfargument name="textboxval2">	
		<cfif StructKeyExists(application.structtask8, "#arguments.textboxval1#")>
			<cfset application.structtask8["#arguments.textboxval1#"] = "#arguments.textboxval2#">
			<cfreturn application.structtask8>			
		<cfelseif arguments.textboxval1 EQ "" OR arguments.textboxval2 EQ "">	
			<cfreturn "Key And Value Cant be Null!!!">
		<cfelse>
			<cfset value=StructInsert(application.structtask8, "#arguments.textboxval1#", "#arguments.textboxval2#")>			
			<cfreturn application.structtask8>
		</cfif>
    </cffunction>
</cfcomponent>