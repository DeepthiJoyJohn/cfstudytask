<cfcomponent>   
	<cffunction name="task27" access="public">
		<cfargument name="username">
		<cfargument name="password">	
		<cfquery name="checklogin" datasource="#application.datasoursename#">
            SELECT userid
            FROM usertask28
            WHERE username=<cfqueryparam value="#arguments.username#" cfsqltype="cf_sql_varchar">
			AND pwd=<cfqueryparam value="#arguments.password#" cfsqltype="cf_sql_varchar">
        </cfquery>
		<cfif (checklogin.recordCount EQ 1)>
			<cfset local.result="1">
		<cfelse>
			<cfset local.result="0">
		</cfif>
		<cfreturn local.result>
	</cffunction>	
</cfcomponent>