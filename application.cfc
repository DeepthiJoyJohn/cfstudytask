<cfcomponent>    
    <cfset this.name = "cfstudyttask"> 
    <cfset this.applicationTimeout = createTimeSpan(0, 0, 30, 0)> 
    <cfset this.sessionManagement = true> 
    <cfset this.sessionTimeout = createTimeSpan(0, 0, 60, 0)> 
    <cffunction name="onApplicationStart" returnType="boolean" output="false">
        <cfset application.datasoursename="cftasksnew">
        
        <cfreturn true>
    </cffunction>

    <cffunction name="onSessionStart" returnType="boolean" output="false">
        <cfset session.structtask7 = {}>
        <cfset session.structtask8={}>
        <cfset session.structtask9={}>
        <cfset session.structtask10={}>
        <cfcookie name = "VisitsCounter" value="1">         
        <cfreturn true>
    </cffunction>    
    <cffunction name="onRequestStart" returnType="void" output="false">
       
    </cffunction>
    <cffunction name="onRequestEnd" returnType="void" output="false">
        
    </cffunction>

    <cffunction name="onSessionEnd" returnType="void" output="false">
        
    </cffunction>

    <cffunction name="onApplicationEnd" returnType="void" output="false">
        
    </cffunction>
</cfcomponent>
