<cfcomponent>   
	<cffunction name="task28" access="public">
		<cfargument name="username">
		<cfargument name="password">	
		<cfquery name="checklogin" datasource="#application.datasoursename#">
            SELECT role
            FROM usertask28
            WHERE username=<cfqueryparam value="#arguments.username#" cfsqltype="cf_sql_varchar">
			AND pwd=<cfqueryparam value="#arguments.password#" cfsqltype="cf_sql_varchar">
        </cfquery>
		<cfif (checklogin.recordCount EQ 1) AND ((checklogin.role EQ "admin") OR (checklogin.role EQ "editor"))>
			<cfset local.result="admin">
		<cfelseif ((checklogin.recordCount EQ 1) AND (checklogin.role EQ "user"))>
			<cfset local.result="user">
		<cfelse>
			<cfset local.result="Wrong Credentials">
		</cfif>
		<cfreturn local.result>
	</cffunction>

	<cffunction name="pagelist" access="public">
		<cfargument name="pageid">
		<cfquery name="pagelist" datasource="#application.datasoursename#">
            SELECT *
            FROM page 
			<cfif arguments.pageid NEQ "0">
				WHERE pageid=<cfqueryparam value="#arguments.pageid#" cfsqltype="cf_sql_integer">
			</cfif>           
        </cfquery>
		<cfreturn pagelist>
	</cffunction>

	<cffunction name="remove" access="remote">
		<cfargument name="pageid">
		<cfquery name="removepage" datasource="#application.datasoursename#">
            DELETE
            FROM page 
			WHERE pageid=<cfqueryparam value="#arguments.pageid#" cfsqltype="cf_sql_integer">           
        </cfquery>
	</cffunction>

	<cffunction name="addpage" access="remote">
		<cfargument name="pagename">
		<cfargument name="pagedesc">
		<cfargument name="pageid">
		<cfif arguments.pageid EQ "0">
			<cfquery name="addpage" datasource="#application.datasoursename#">
				INSERT
				INTO page (pagename,pagedesc)
				VALUES (<cfqueryparam value="#arguments.pagename#" cfsqltype="cf_sql_varchar">,
						<cfqueryparam value="#arguments.pagedesc#" cfsqltype="cf_sql_varchar">)         
			</cfquery>
		<cfelse>
			<cfquery name="updatepage" datasource="#application.datasoursename#">
				UPDATE
				page 
				SET pagename=<cfqueryparam value="#arguments.pagename#" cfsqltype="cf_sql_varchar">,
			    pagedesc=<cfqueryparam value="#arguments.pagedesc#" cfsqltype="cf_sql_varchar">
				WHERE
				pageid=<cfqueryparam value="#arguments.pageid#" cfsqltype="cf_sql_integer">        
			</cfquery>
		</cfif>
	</cffunction>
	<cffunction name="getpage" access="remote">
		<cfargument name="pageid">
		<cfquery name="pagelist" datasource="#application.datasoursename#">
            SELECT *
            FROM page 
			<cfif arguments.pageid NEQ "0">
				WHERE pageid=<cfqueryparam value="#arguments.pageid#" cfsqltype="cf_sql_integer">
			</cfif>           
        </cfquery>
		<cfreturn pagelist.pagename&"$"&pagelist.pagedesc&"$"&pagelist.pageid>
	</cffunction>
</cfcomponent>