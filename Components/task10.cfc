<cfcomponent>
    <cffunction name="fun_task10" access="public">
		<cfargument name="textboxval1">
		<cfargument name="textboxval2">	
		<cfif StructKeyExists(application.structtask, arguments.textboxval1)>
			<cfreturn "#arguments.textboxval1# already present. Cannot add again"> 
		<cfelseif len((trim(arguments.textboxval1))) EQ 0 OR len((trim(arguments.textboxval2))) EQ 0>	
			<cfreturn "Key And Value Cant be Null!!!">
		<cfelse>
			<cfset value=StructInsert(application.structtask, "#arguments.textboxval1#", "#arguments.textboxval2#")>			
			<cfreturn application.structtask>
		</cfif>
    </cffunction>
</cfcomponent>