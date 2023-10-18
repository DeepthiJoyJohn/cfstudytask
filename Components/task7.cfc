<cfcomponent>
    <cffunction name="fun_task7" access="public">
		<cfargument name="textboxval1">
		<cfargument name="textboxval2">	
		<cfif StructKeyExists(session.structtask7, "#arguments.textboxval1#")>
			<cfreturn "Key Already Exists!!! Try Another Key"> 
		<cfelseif len((trim(arguments.textboxval1))) EQ 0 OR len((trim(arguments.textboxval2))) EQ 0>	
			<cfreturn "Key And Value Cant be Null!!!">
		<cfelse>
			<cfset value=StructInsert(session.structtask7, "#arguments.textboxval1#", "#arguments.textboxval2#")>
		</cfif>
    </cffunction>
</cfcomponent>