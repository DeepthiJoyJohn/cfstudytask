<cfcomponent>
    <cffunction name="fun_task6" access="public">
		<cfargument name="textboxval1">
		<cfargument name="textboxval2">
		<cfset local.struct = StructNew()>
		<cfif arguments.textboxval1 NEQ "" AND arguments.textboxval2 NEQ "">
			<cfset value=StructInsert(local.struct, "#arguments.textboxval1#", "#arguments.textboxval2#")> 
			<cfreturn local.struct>
		<cfelse>         	
			<cfreturn "Key or Value cant be null !! please enter values">
		</cfif>
    </cffunction>
</cfcomponent>