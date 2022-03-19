
<!--- MOVING TO HEADER SO DEFAULT PAGE CAN GRAB TOO --->
    

   <CFIF Isdefined("URL.ID") AND url.id NEQ '' >
        
            <CFQUERY name="questionCheck" datasource="clerkPerformTest">

                select * from clerkperform.dbo.questions 
                WHERE linkedFormID = '#url.ID#'

            </CfQUERY>
        
    <CFELSEIF Isdefined("session.userUUID") AND session.userUUID NEQ ''>

            <CFQUERY name="questionCheck" datasource="clerkPerformTest">

                select * from clerkperform.dbo.questions 
                WHERE linkedFormID = '#session.userUUID#'
        
            </CfQUERY>
    <CFELSE>        

    </CFIF>
<!--- <CFDUMP VAR="#questionCheck#" LABEL="TEST2">--->





<CFIF ISDEFINED("questionCheck.RecordCount") and questionCheck.RecordCount NEQ '0'>

        <!---<table id="questionCheckTable" class="table table-responsive table-condensed">
        <thead>
            <th colspan='6'>QUESTIONS FOR THIS FORM</th>
        </thead>
        <tr>
        <tbody>
            <cfoutput query="questionCheck">
                <Td>#linkedFormID#</Td>
                <Td>#questionTitle#</Td>
                    <Td>#questionDesc#</Td>
                        <Td>#questionSubText#</Td>
                            <Td>#questionOrder#</Td>
                                <Td>#questionTypeID#</Td>
                                <Tr>
            </cfoutput>
        </tbody>
        </tr>
        </table>--->

        <ul class="list-group" id="questionCheckUL">
            <cfoutput query="questionCheck">
            <li class="list-group-item"><btn id="btnQuestionCheckDown" class="btn-primary"><></btn><btn id="btnQuestionCheck" class="btn-primary">Controls</btn>#linkedFormID#&nbsp;#questionDesc#&nbsp;#questionSubText# </li>
            </cfoutput>    
        </ul>

</CFIF>