<cfcomponent>
    <cffunction name="fun_task2" access="public">
		<cfargument name="textboxval">
		<cfset local.result="">
		<cfswitch expression="#arguments.textboxval#">
			<cfcase value="5">
				<cfset local.result="5 is very good">
			</cfcase>
			<cfcase value="4">
				<cfset local.result="4 is good">
			</cfcase>
			<cfcase value="3">
				<cfset local.result="3 is fair">
			</cfcase>
			<cfcase value="2">
				<cfset local.result="1 & 2 is ok">
			</cfcase>
			<cfcase value="1">
				<cfset local.result="1 & 2 is ok">
			</cfcase>
			<cfcase value="">
				<cfset local.result="Please Enter Value in Textbox">
			</cfcase>
			<cfdefaultcase>
				<cfset local.result="Invalid Input">
			</cfdefaultcase>
		</cfswitch>
		<cfreturn local.result>
    </cffunction>
</cfcomponent>