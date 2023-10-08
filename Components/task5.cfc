<cfcomponent>
    <cffunction name="fun_task5" access="public">
		<cfargument name="dobuser">
		<cfargument name="dobmother">
		<cfset local.usermother = {}>
		<cfset ageofuser = dateDiff("yyyy", arguments.dobuser, Now())>
		<cfset local.usermother["Age Of User"]= dateDiff("yyyy", arguments.dobuser, Now())>
		<cfset local.usermother["Age At Which Mother Delivered User"]= dateDiff("yyyy", arguments.dobmother,arguments.dobuser)>
		<cfset motherdeliveredhim = dateDiff("yyyy", arguments.dobmother,arguments.dobuser)>
		<cfif DateFormat(arguments.dobuser,"dd-MM-yyyy") gt DateFormat(now(),"dd-MM-yyyy")>
			<cfset daysforuserbday = dateDiff("d", now(), arguments.dobuser)>
		<cfelseif DateFormat(arguments.dobuser,"dd-MM-yyyy") eq DateFormat(now(),"dd-MM-yyyy")>
			<cfset daysforuserbday="0">
		<cfelse>
			<cfset daysforuserbday = dateDiff("d",now(),dateAdd("yyyy", 1, arguments.dobuser))>
		</cfif>
		<cfset local.usermother["Days Remaining For Users Bday"]= daysforuserbday>
		<cfif DateFormat(arguments.dobmother,"dd-MM-yyyy") gt DateFormat(now(),"dd-MM-yyyy")>
			<cfset daysformotherbday = dateDiff("d", now(), arguments.dobmother)>
		<cfelseif DateFormat(arguments.dobmother,"dd-MM-yyyy") eq DateFormat(now(),"dd-MM-yyyy")>
			<cfset daysformotherbday="0">
		<cfelse>
			<cfset daysformotherbday = dateDiff("d",now(),dateAdd("yyyy", 1, arguments.dobmother))>
		</cfif>
		<cfset local.usermother["Days Remaining For Mothers Bday"]= daysformotherbday>
		<cfreturn local.usermother>
    </cffunction>
</cfcomponent>