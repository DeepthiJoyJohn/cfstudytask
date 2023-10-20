<cfcomponent>
    <cffunction name="fun_task1" access="public">
		<cfargument name="textboxval">
		<cfset var result="">
		<cfif arguments.textboxval eq 5>
			<cfset var result="5 is very good">
		<cfelseif arguments.textboxval eq 4>
			<cfset var result="4 is good">
		<cfelseif arguments.textboxval eq 3>
			<cfset var result="3 is fair">
		<cfelseif (arguments.textboxval eq 2) or (arguments.textboxval eq 1)>
			<cfset var result="1 & 2 is ok">
		<cfelseif (len((trim(arguments.textboxval))) eq 0)>
			<cfset var result="Please Enter Value in Text Box">
		<cfelse>
			<cfset var result="Invalid Input">
		</cfif>
        <cfreturn result>
    </cffunction>
</cfcomponent>