<cfcomponent>
    <cffunction name="fun_task2" access="public">
		<cfargument name="textboxval">
		<cfset var result="">
		<cfswitch expression="#arguments.textboxval#">
			<cfcase value="5">
				<cfset var result="5 is very good">
			</cfcase>
			<cfcase value="4">
				<cfset var result="4 is good">
			</cfcase>
			<cfcase value="3">
				<cfset var result="3 is fair">
			</cfcase>
			<cfcase value="2">
				<cfset var result="1 & 2 is ok">
			</cfcase>
			<cfcase value="1">
				<cfset var result="1 & 2 is ok">
			</cfcase>
			<cfcase value="">
				<cfset var result="Please Enter Value in Textbox">
			</cfcase>
			<cfdefaultcase>
				<cfset var result="Invalid Input">
			</cfdefaultcase>
		</cfswitch>
		<cfreturn result>
    </cffunction>
</cfcomponent>