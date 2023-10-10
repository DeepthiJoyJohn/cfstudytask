<cfcomponent>    
    <cfset this.name = "cfstudyttask"> 
    <cfset this.applicationTimeout = createTimeSpan(0, 0, 30, 0)> 
    <cfset this.sessionManagement = true> 
    <cfset this.sessionTimeout = createTimeSpan(0, 0, 60, 0)> 
    <cffunction name="onApplicationStart" returnType="boolean" output="false">
        <cfset application.structtask7={}>
        <cfset application.structtask8={}>
        <cfset application.structtask9={}>
        <cfreturn true>
    </cffunction>

    <cffunction name="onSessionStart" returnType="boolean" output="false">
        <cfset session.mySessionVar = "Welcome to the session!">
        <cfreturn true>
    </cffunction>    

    <cffunction name="onRequestEnd" returnType="void" output="false">
        
    </cffunction>

    <cffunction name="onSessionEnd" returnType="void" output="false">
        
    </cffunction>

    <cffunction name="onApplicationEnd" returnType="void" output="false">
        
    </cffunction>
</cfcomponent>
