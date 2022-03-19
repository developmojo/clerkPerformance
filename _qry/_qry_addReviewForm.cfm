
<CFIF ISDEFINED("session.userUUID") and session.userUUID NEQ ''>

 
 <CFQUERY name="checkreviews" datasource="clerkperformTest">

    select * from reviewForms where reviewFormUUID = '#session.userUUID#'

  </CFQUERY>

  <CFIF ISDEFINED('checkreviews.recordCount') AND checkreviews.recordCount NEQ 0>

    <!--- IF THERE IS A FORM WITH THE CURRENT uuid we do not want to create a new one --->
 

    <h5 style="text-align:center; color: red;">FORM WITH ID <cfoutput>#session.userUUID# already exists. <br>Add Questions?</cfoutput></h5>
 
  <CFELSE>
    <cfquery datasource="clerkPerformTest" name="addReviewForm">	
    INSERT INTO [dbo].[reviewForms]
           (
		     
             [reviewFormName],
             [reviewFormUUID],
             [createdDate],
             [createdby]
            
		   )

     VALUES

           (

           <CFIF ISDEFINED("form.questionDesc") AND form.questionDesc NEQ ''>
		          <cfqueryparam value="#form.questionDesc#" cfsqltype="cf_sql_varchar">
           <CFELSEIF ISDEFINED('form.reviewFormName') and form.reviewFormName NEQ '' >
              <cfqueryparam value="#form.reviewFormName#" cfsqltype="cf_sql_varchar">
           <CFELSE>
           ''
           </CFIF>

           <CFIF ISDEFINED("session.userUUID") AND session.userUUID NEQ ''>
		   ,<cfqueryparam value="#session.userUUID#" cfsqltype="cf_sql_varchar">
           <CFELSE>
           ,''
           </CFIF>

           ,<cfqueryparam value="#NOW()#" cfsqltype="cf_sql_date">
          ,<cfqueryparam value="#session.employeeid#" cfsqltype="cf_sql_integer">
   
		   )

      </cfquery>

      <cflocation url="?action=reviewForms">

    </CFIF>

   
<CFELSE>

    NO UUID GENERATED, INSERT FAILED!

</CFIF>

