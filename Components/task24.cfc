<cfcomponent>   
	<cffunction name="task24" access="remote" returntype="string">
		<cfargument name="name">
		<cfargument name="email">	
		<cfquery name="checkdata" datasource="#application.datasoursename#">
            SELECT *
            FROM checkuser
            WHERE email=<cfqueryparam value="#arguments.email#" cfsqltype="cf_sql_varchar">
        </cfquery>
		<cfif checkdata.recordCount eq "1">
			<cfset local.result="1">
		<cfelse>
			<cfset local.result="0">
		</cfif>	
		<cfreturn local.result>
	</cffunction>

	<cffunction name="insertdata" access="remote" returntype="string">
		<cfargument name="name">
		<cfargument name="email">	
		<cfquery name="insertdata" datasource="#application.datasoursename#">
            INSERT 
			INTO checkuser (name, email)
			VALUES (
				<cfqueryparam value="#arguments.name#" cfsqltype="cf_sql_varchar">,
				<cfqueryparam value="#arguments.email#" cfsqltype="cf_sql_varchar">                    
			)
        </cfquery>
		<cfreturn "1">
	</cffunction>		
</cfcomponent>