<cfcomponent>
    <cffunction name="fun_task12" access="public">
		<cfquery name="qry_selectentry" datasource="#application.datasoursename#">
			SELECT *
			FROM user
			WHERE 1
		</cfquery>
	<cfreturn qry_selectentry>
    </cffunction>
</cfcomponent>