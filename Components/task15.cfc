<cfcomponent>	
    <cffunction name="mulitiply" access="public">
		<cfargument name="arg1" default="1">
		<cfargument name="arg2" default="1">
		<cfargument name="arg3" default="1">
		<cfargument name="arg4" default="1">
		<cfset local.result=(arguments.arg1*arguments.arg2*arguments.arg3*arguments.arg4)>
		<cfreturn local.result>
    </cffunction>
</cfcomponent>