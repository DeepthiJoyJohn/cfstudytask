<html>
    <head>       
        <link rel="stylesheet" href="../css/task1.css">    
        <link rel="stylesheet" href="../css/task4.css">   
    </head>
    <body>
    <h2>TASK-15</h2>
    <h3>Create a component with function multiply. Create a cfm page which need to call that function 
        with different arguments (mentioned below) using cfinvoke tag, cfobject tag and createobject function. 
        It should give results for the following function calls with different number of arguments
        mulitiply(1,2)
        mulitiply(1,2,3)
        mulitiply(1,2,3,4)
    </h3>
    <form>
        <cfset task15obj = createObject("component", "cfstudytask.Components.task15")>
        <cfset res = task15obj.mulitiply(1,2)>
        <table>
            <tr>
                <td colspan="2">Result Using Create Object</td>
            </tr>
            <tr>
                <th>Result of mulitiply(1,2)</th>
                <td><cfdump var="#task15obj.mulitiply(1,2)#"></td>
            </tr>
            <tr>
                <th>Result of mulitiply(1,2,3)</th>
                <td><cfdump var="#task15obj.mulitiply(1,2,3)#"></td>
            </tr>
            <tr>
                <th>Result of mulitiply(1,2,3,4)</th>
                <td><cfdump var="#task15obj.mulitiply(1,2,3,4)#"></td>
            </tr>        
        </table>
        <cfinvoke component="cfstudytask/Components/task15" method="mulitiply" returnVariable="multiply1" >
            <cfinvokeargument name="arg1" value="1">
            <cfinvokeargument name="arg2" value="2">                                          
        </cfinvoke>
        <cfinvoke component="cfstudytask/Components/task15" method="mulitiply" returnVariable="multiply2" >
            <cfinvokeargument name="arg1" value="1">
            <cfinvokeargument name="arg2" value="2"> 
            <cfinvokeargument name="arg3" value="3">                                          
        </cfinvoke>
        <cfinvoke component="cfstudytask/Components/task15" method="mulitiply" returnVariable="multiply3" >
            <cfinvokeargument name="arg1" value="1">
            <cfinvokeargument name="arg2" value="2"> 
            <cfinvokeargument name="arg3" value="3"> 
            <cfinvokeargument name="arg4" value="4">                                          
        </cfinvoke>
        <table>
            <tr>
                <td colspan="2">Result Using cfinvoke</td>
            </tr>
            <tr>
                <th>Result of mulitiply(1,2)</th>
                <td><cfdump var="#multiply1#"></td>
            </tr>
            <tr>
                <th>Result of mulitiply(1,2,3)</th>
                <td><cfdump var="#multiply2#"></td>
            </tr>
            <tr>
                <th>Result of mulitiply(1,2,3,4)</th>
                <td><cfdump var="#multiply3#"></td>
            </tr>        
        </table>
        <cfobject component="cfstudytask/Components/task15" name="mulitiply">
        <cfset result1 = mulitiply.mulitiply(1, 2)>
        <cfset result2 = mulitiply.mulitiply(1, 2,3)>
        <cfset result3 = mulitiply.mulitiply(1, 2,3,4)>
        <table>
            <tr>
                <td colspan="2">Result Using cfobject</td>
            </tr>
            <tr>
                <th>Result of mulitiply(1,2)</th>
                <td><cfdump var="#result1#"></td>
            </tr>
            <tr>
                <th>Result of mulitiply(1,2,3)</th>
                <td><cfdump var="#result2#"></td>
            </tr>
            <tr>
                <th>Result of mulitiply(1,2,3,4)</th>
                <td><cfdump var="#result3#"></td>
            </tr>        
        </table>
    </form>
    </body>
</html>