<cfcomponent>
    <cffunction name="fun_task7" access="public">
		<cfargument name="textboxval1">
		<cfargument name="textboxval2">	
		<cfif StructKeyExists(application.structtask7, "#arguments.textboxval1#")>
			<cfreturn "Key Already Exists!!! Try Another Key"> 
		<cfelseif arguments.textboxval1 EQ "" OR arguments.textboxval2 EQ "">	
			<cfreturn "Key And Value Cant be Null!!!">
		<cfelse>
			<cfset value=StructInsert(application.structtask7, "#arguments.textboxval1#", "#arguments.textboxval2#")>			
			<cfreturn application.structtask7>
		</cfif>
    </cffunction>
</cfcomponent>