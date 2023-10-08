<cfcomponent>
    <cffunction name="fun_task6" access="public">
		<cfargument name="textboxval1">
		<cfargument name="textboxval2">
		<cfset local.struct = StructNew()>
		<cfset value=StructInsert(local.struct, "#arguments.textboxval1#", "#arguments.textboxval2#")>          	
		<cfreturn local.struct>
    </cffunction>
</cfcomponent>