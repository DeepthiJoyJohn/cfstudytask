<cfcomponent>
    <cffunction name="fun_task4" access="public">
		<cfset local.daysstruct = {}>
		<cfset local.daysstruct["Today Date"] = DateFormat(Now(), "dd-MM-yyyy")>
		<cfset local.daysstruct["Month Numeric"] =Month(Now())>
		<cfset local.daysstruct["Month String"] =MonthAsString(Month(Now()))>
		<cfset local.dayno =DayOfWeek(Now())>
		<cfif local.dayno eq "7">
			<cfset local.daysstruct["Last Friday"]= DateFormat(DateAdd("d", -1, Now()), "dd-MM-yyyy")>
		<cfelseif local.dayno eq "6">
			<cfset local.daysstruct["Last Friday"]= DateFormat(DateAdd("d", -7, Now()), "dd-MM-yyyy")>
		<cfelseif local.dayno eq "5">
			<cfset local.daysstruct["Last Friday"]= DateFormat(DateAdd("d", -6, Now()), "dd-MM-yyyy")>
		<cfelseif local.dayno eq "4">
			<cfset local.daysstruct["Last Friday"]= DateFormat(DateAdd("d", -5, Now()), "dd-MM-yyyy")>
		<cfelseif local.dayno eq "3">
			<cfset local.daysstruct["Last Friday"]= DateFormat(DateAdd("d", -4, Now()), "dd-MM-yyyy")>
		<cfelseif local.dayno eq "2">
			<cfset local.daysstruct["Last Friday"]= DateFormat(DateAdd("d", -3, Now()), "dd-MM-yyyy")>
		<cfelseif local.dayno eq "1">
			<cfset local.daysstruct["Last Friday"]= DateFormat(DateAdd("d", -2, Now()), "dd-MM-yyyy")>
		</cfif>
		<cfset local.firstdateofcurrentmonth = CreateDate(Year(Now()), Month(Now()), 01)>
		<cfset local.firstdateofnextmonth = CreateDate(Year(Now()), Month(Now())+1, 01)>
		<cfset daysDifference = DateDiff("d", local.firstdateofcurrentmonth, local.firstdateofnextmonth)>		
		<cfloop from="1" to="5" index="i">
			<cfset local.lastdate=DateFormat(CreateDate(Year(Now()), Month(Now()), (daysDifference-i)),"dd-MMM-yyyy")>
			<cfset local.lastday=DayOfWeekAsString(DayOfWeek(CreateDate(Year(Now()), Month(Now()), daysDifference-i)))>
			<cfset local.daysstruct[local.lastday]= local.lastdate&'-'&local.lastday  >
		</cfloop>		
		<cfreturn local.daysstruct>
    </cffunction>
</cfcomponent>