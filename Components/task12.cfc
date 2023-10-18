<cfcomponent>
    <cffunction name="fun_task12" access="public">
		<cfargument name="textbox">
		<cfif arguments.textbox EQ "">
			<cfreturn 0>
		<cfelseif (isValid("integer", arguments.textbox))>			
			<cfreturn 1>
		<cfelse>
			<cfreturn 0>
		</cfif>
    </cffunction>
	<cffunction name="fun_task12sub" access="public">
		<cfquery name="qry_selectentry" datasource="#application.datasoursename#">
				SELECT *
				FROM user
				WHERE 1
		</cfquery>
		<cfreturn qry_selectentry>
	</cffunction>
	<cffunction name="fun_task12nthrow" access="public">
		<cfargument name="textbox">
		<cfquery name="qry_selectentrynthrow" datasource="#application.datasoursename#">
			WITH CTE AS (
    		SELECT ROW_NUMBER() OVER() AS rowno,firstname,lastname
    		FROM USER
			)
			SELECT rowno,firstname,lastname
			FROM CTE
			WHERE rowno = <cfqueryparam value="#arguments.textbox#" cfsqltype="cf_sql_varchar">
		</cfquery>
		<cfreturn qry_selectentrynthrow.firstname>
	</cffunction>
</cfcomponent>