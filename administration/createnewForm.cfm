
<!---<CFIF ISDEFINED("session.userUUID") and session.userUUID NEQ ''>--->

  <H4>REVIEW FORM</H4>
  

  <CFIF ISDEFINED("form.submit") and form.submit EQ "updateForm">

    <CFINCLUDE template="../_qry/_qry_updateReviewForm.cfm">

  <CFELSE>
    
  </CFIF>

  <CFIF structKeyExists(session, 'userUUID') and Len(session.userUUID) GT 1>
   
      <!---<cfoutput>#session.userUUID#</cfoutput>--->
  
  <CFELSE>

    <CFIF structKeyExists(URL, 'id') AND Len(url.id) EQ '36'>
      
      <cfset session.userUUID = #URL.ID#>

    <CFELSE>
      <cfset session.userUUID = createUUID()>
    </CFIF>
  
  </CFIF>


<form class="creatreviewForm" action="?action=createnewform" method="post">
  <div class="form-row">
    <div class="form-group col-md-12">
      
      <CFIF ISDEFINED("url.ID") and url.ID nEQ ''>
      <input type="text" class="form-control" name="reviewFormName" id="newformaddquestion" aria-describedby="Add Question" VALUE="<Cfoutput>#getReviewForms.reviewFormName#</Cfoutput>">
      <CFELSE>
      <input type="text" class="form-control" name="reviewFormName" id="newformaddquestion" aria-describedby="Add Question" placeholder="New Review Form">
      </CFIF>
    
    <!--- TEST:<input type="text" class="form-control" VALUE="<CFOUTPUT>#session.userUUID#</CFOUTPUT>" name="uuidGen">--->
      
    
    <!--- RESET session.userUUID variable with button click --->
    <CFIF ISDEFINED("session.userUUID") and session.userUUID NEQ ''>
      <CFIF ISDEFINED("url.resetForm") and url.resetForm EQ 'Yes'>
          <CFSET session.userUUID = ''>
          <cfset session.userUUID = createUUID()>
          <!--- <cfdump var="#session.userUUID#">--->
       </CFIF>
      
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="?action=createNewForm&resetForm=Yes"><input type="button" class="btn btn-primary btn-sm" value="Reset to New Form"></a>
      
    </CFIF>    

  
    <CFIF structKeyExists(url,'id') AND url.id NEQ ''>
      <p align="right"><input type="button" class="btn btn-primary btn-sm" onclick="showQuestions();" value="ADD QUESTION"></p>
    <CFELSEIF structKeyExists(session,'userUUID') AND LEN(session.userUUID) EQ '36'>
      <p align="right"><input type="button" class="btn btn-primary btn-sm" onclick="showQuestions();" value="ADD QUESTION"></p>
    <CFELSE>
      
    </CFIF>
      
      <hr> 

      <CFIF ISDEFINED("url.ID") and url.ID nEQ ''>
        <p align="right"><button type="submit" name="submit" value="updateForm"  class="btn btn-success btn-sm">Update Form</button></p>
      <CFELSE>  
        <p align="right"><button type="submit" name="submit" value="submitForm"  class="btn btn-success btn-sm">Save Form</button></p>
      </CFIF>

      <select id="inputState" class="form-control">
        <option selected>OPTIONS...</option>
        <option>PREVIEW AS PDF</option>
        <option>PREVIEW</option>
        <option>SAVE FORM</option>
        <option>REMOVE FORM 
         

        </option>
      </Select>
       </div>
      
      
    </div>
    
  </form>

  <!---<CFQUERY datasource="clerkPerform" name="formRecordCheck">

        select * from templates where 

  </CFQUERY>--->