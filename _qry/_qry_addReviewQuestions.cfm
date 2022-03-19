<CFIF ISDEFINED("session.userUUID") and session.userUUID NEQ ''>

        <cfquery datasource="clerkPerformTest" name="addQuestion">	
            INSERT INTO [dbo].[Questions]
                    (
                        
                        [questionTypeID],
                        [questionDesc],
                        [questionSubText],
                        [linkedFormID]
                    
                    )
        
                VALUES
        
                    (
        
                    <CFIF ISDEFINED("form.questionTypeID") AND form.questionTypeID NEQ ''>
                    <cfqueryparam value="#form.questionTypeID#" cfsqltype="cf_sql_integer">
                    <CFELSE>
                    ''
                    </CFIF>
        
                    <CFIF ISDEFINED("form.questionDesc") AND form.questionDesc NEQ ''>
                    ,<cfqueryparam value="#form.questionDesc#" cfsqltype="cf_sql_varchar">
                    <CFELSE>
                    ,''
                    </CFIF>

                    <CFIF ISDEFINED("form.questionSubText") AND form.questionSubText NEQ ''>
                    ,<cfqueryparam value="#form.questionSubText#" cfsqltype="cf_sql_varchar">
                    <CFELSE>
                    ,''
                    </CFIF>
                    

                    <CFIF ISDEFINED("session.userUUID") AND session.userUUID NEQ ''>
                ,<cfqueryparam value="#session.userUUID#" cfsqltype="cf_sql_varchar">
                    <CFELSE>
                    ,''
                    </CFIF>
            
                    )
        
        </cfquery>

</CFIF>