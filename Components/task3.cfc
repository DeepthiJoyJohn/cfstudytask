<cfcomponent>
    <cffunction name="fun_task3" access="public">
		<cfargument name="textboxval">
			<cfset arguments.textboxval = reReplace(arguments.textboxval, '["]+', '', 'all')>
			<cfset local.numarray = listToArray(arguments.textboxval, ",")>
			<cfset local.result="">
			<cfset var pattern = "[##A-Za-z\@^&*()_+{}\[\]:;<>,.?~\\|!`$%=]">
			<cfloop from="1" to="#ArrayLen(local.numarray)#" index="i">	
					<cfif (reFind(pattern, local.numarray[i]) neq 0)>
						<cfset local.result="Invalid Entryy">
						<cfbreak>									
					<cfelseif ArrayIsDefined(local.numarray, i) AND local.numarray[i]%3 neq 0>
						<cfcontinue>
					<cfelse>
						<cfset local.result = local.result & local.numarray[i] & ','>						
					</cfif>				
			</cfloop>
			<cfset local.result = left(local.result, len(local.result) - 1)> 
		<cfreturn local.result>
    </cffunction>
</cfcomponent>