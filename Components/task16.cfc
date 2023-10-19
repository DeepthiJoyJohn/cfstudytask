<cfcomponent>	
    <cffunction name="task16" access="public">
		<cfset local.re="<table><tr>">
		<cfloop from="1" to="3" index="i">
			<cfset local.re=local.re&"<tr>">
			<cfset local.j=i+3>
			<cfset local.k=local.j+3>
			<cfset local.re=local.re&"<td>#i#</td><td>#local.j#</td><td>#local.k#</td></tr>">
		</cfloop>
		<cfset local.re=local.re&"</tr></table>">
		<cfreturn local.re>
    </cffunction>
</cfcomponent>