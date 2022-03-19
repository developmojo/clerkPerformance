
<CFIF ISDEFINED("url.id") and url.ID NEQ ''>

 
    <CFQUERY name="checkreviews" datasource="clerkperformTest">
   
       select * from reviewForms where reviewFormUUID = '#URL.id#'
   
    </CFQUERY>
   
     <CFIF ISDEFINED('checkreviews.recordCount') AND checkreviews.recordCount EQ 0>
   
       <!--- IF THERE IS A FORM WITH THE CURRENT uuid we do not want to create a new one --->
    
   
       <h5 style="text-align:center; color: red;">FORM WITH ID <cfoutput>#url.id# does not already exist. <br>Add Form?</cfoutput></h5>
    
     <CFELSE>
       <cfquery datasource="clerkPerformTest" name="updateReviewForm">	
       	UPDATE [dbo].[reviewforms]
		SET 
            reviewFormName=<cfif IsDefined("form.reviewFormName") AND form.reviewFormName NEQ ''>
                <cfqueryparam value="#form.reviewFormName#" cfsqltype="cf_sql_varchar">
                <cfelse>
                 ''
                </cfif>
		
			,ModifiedDate=<cfqueryparam value="#NOW()#" cfsqltype="cf_sql_date">
            ,ModifiedByID=<cfqueryparam value="#session.employeeid#" cfsqltype="cf_sql_integer">
               


        WHERE reviewFormUUID = <cfqueryparam value="#url.id#" cfsqltype="cf_sql_integer">

       
   
       </CFQUERY>

        <cflocation url="?action=reviewForms">

    </CFIF>   
 
<CFELSE>

    <CFIF ISDEFINED("url.id") and url.ID NEQ ''>

        <cfoutput>#url.id#</cfoutput>

    <cfelseIF ISDEFINED("session.userUUID") and session.userUUID NEQ ''>

        <cfoutput>#session.userUUID#</cfoutput>

    <cfelse>

    </CFIF>    

 </CFIF>
   
   