<cfcomponent>   
	<cffunction name="task24" access="remote">
		<cfargument name="name">
		<cfargument name="email">	
		<cfquery name="checkdata" datasource="#application.datasoursename#">
            SELECT *
            FROM checkuser
            WHERE name = <cfqueryparam value="#arguments.name#" cfsqltype="cf_sql_varchar">
			AND email=<cfqueryparam value="#arguments.email#" cfsqltype="cf_sql_varchar">
        </cfquery>
		<cfif checkdata.recordCount eq "1">
			<cfreturn "1">
		<cfelse>
			<cfreturn "0">
		</cfif>
	</cffunction>	
</cfcomponent>