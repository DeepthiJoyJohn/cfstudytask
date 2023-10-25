<cfcomponent>   
	<cffunction name="task22" access="public">
		<cfset local.myStruct = [{Name: 'saravanan', Age: 27,LOCATION:'dubai'},{Name: 'Ram else', Age: 26,LOCATION:'Kovilpatti'}]/>
		<cfset myJsonVar = serializeJSON(local.myStruct) />
		<cfreturn myJsonVar>
	</cffunction>	
</cfcomponent>