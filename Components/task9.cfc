<cfcomponent>
    <cffunction name="fun_task9" access="public">
		<cfargument name="textboxval1">
		<cfargument name="textboxval2">			
		<cfif StructKeyExists(session.structtask9, "#arguments.textboxval1#")>
			<cfreturn "Cannot Add"> 
		<cfelseif (len((trim(arguments.textboxval1))) EQ 0) OR (len((trim(arguments.textboxval2))) EQ 0)>	
			<cfreturn "Key Null">
		<cfelse>
			<cfset value=StructInsert(session.structtask9, "#arguments.textboxval1#", "#arguments.textboxval2#")>
			<cfreturn "Added">
		</cfif>
    </cffunction>
</cfcomponent>