<cfcomponent>   
	<cffunction name="task19" access="public">
		<cfset local.counter=cookie.VisitsCounter+1>
        <cfcookie name = "VisitsCounter" value="#local.counter#">
	</cffunction>	
</cfcomponent>