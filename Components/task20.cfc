<cfcomponent>   
	<cffunction name="task20" access="public">
		<cfargument name="captcha">
		<cfargument name="email">
		<cfargument name="captchaText">
		<cfset local.result="">				
		<cfif trim(arguments.captcha) EQ "#arguments.captchaText#">
			<cfset local.result="Email Address successfully subscribe our newsletter">
		<cfelse>
			<cfset local.result="Invalid Captcha!!!">
		</cfif>
		<cfreturn local.result>
	</cffunction>	
</cfcomponent>