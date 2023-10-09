<cfcomponent>
    <cffunction name="fun_task5" access="public">
		<cfargument name="dobuser">
		<cfargument name="dobmother">
		<cfset local.usermother = {}>
		<cfset local.usermother["DOB of User"]=  DateFormat(arguments.dobuser,"dd-MM-yyyy")>
		<cfset local.usermother["DOB of Mother"]=  DateFormat(arguments.dobmother,"dd-MM-yyyy")>
		<cfset local.usermother["Age Of User"]= dateDiff("yyyy", arguments.dobuser, Now())>
		<cfset local.usermother["Age At Which Mother Delivered User"]= dateDiff("yyyy", arguments.dobmother,arguments.dobuser)>
		<cfset local.dateofuser = CreateDateTime(Year(Now()), Month(arguments.dobuser), Day(arguments.dobuser), 0, 0, 0)> 
		<cfset local.dateofmother = CreateDateTime(Year(Now()), Month(arguments.dobmother), Day(arguments.dobmother), 0, 0, 0)>
		<cfset local.datetoday = CreateDateTime(Year(Now()), Month(Now()), Day(Now()), 0, 0, 0)> 
		<cfif arguments.dobuser gt Now()>
			<cfset local.daysforuserbday = dateDiff("d", now(), arguments.dobuser)>
		<cfelseif DateFormat(arguments.dobuser,"dd-MM-yyyy") eq DateFormat(now(),"dd-MM-yyyy")>
			<cfset local.daysforuserbday="0">
		<cfelse>
			<cfset local.dateadd=dateAdd("yyyy", 1, local.dateofuser)>
			<cfset local.daysforuserbday = dateDiff("d",local.datetoday,local.dateadd)>
		</cfif>
		<cfset local.usermother["Days Remaining For Users Bday"]= daysforuserbday>
		<cfif arguments.dobmother gt Now()>
			<cfset local.daysformotherbday = dateDiff("d", now(), local.dateofmother)>
		<cfelseif arguments.dobmother eq now()>
			<cfset local.daysformotherbday="0">
		<cfelse>
			<cfset local.daysformotherbday = dateDiff("d",now(),dateAdd("yyyy", 1, local.dateofmother))>
		</cfif>
		<cfset local.usermother["Days Remaining For Mothers Bday"]= local.daysformotherbday>
		<cfreturn local.usermother>
    </cffunction>
</cfcomponent>