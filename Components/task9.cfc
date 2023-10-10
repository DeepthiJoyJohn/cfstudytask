<cfcomponent>
    <cffunction name="fun_task9" access="public">
		<cfargument name="textboxval1">
		<cfargument name="textboxval2">	
		<cfif StructKeyExists(application.structtask9, "#arguments.textboxval1#")>
			<cfreturn "#arguments.textboxval1# already present. Cannot add again"> 
		<cfelseif arguments.textboxval1 EQ "" OR arguments.textboxval2 EQ "">	
			<cfreturn "Key And Value Cant be Null!!!">
		<cfelse>
			<cfset value=StructInsert(application.structtask9, "#arguments.textboxval1#", "#arguments.textboxval2#")>			
			<cfreturn application.structtask9>
		</cfif>
    </cffunction>
</cfcomponent>