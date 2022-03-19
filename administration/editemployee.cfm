>> EDIT EMPLOYEE <<

<CFIF ISDEFINED("UnifiedEmployees.recordcount") and UnifiedEmployees.recordcount NEQ 0>

<cfoutput>


<form>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputfName">First Name</label>
      <input type="fname" class="form-control" id="inputfName" placeholder="First Name" value="#UnifiedEmployees.fname#" disabled>
    </div>
   <div class="form-group col-md-6">
      <label for="inputlName">Last Name</label>
      <input type="lname" class="form-control" id="inputlName" placeholder="Last Name" value="#UnifiedEmployees.lname#" disabled>
    </div>
  </div>
  <div class="form-group col-md-12">
    <label for="email">EMAIL</label>
    <input type="text" class="form-control" id="email" placeholder="email" value="#UnifiedEmployees.email#" disabled>
  </div
  <div class="form-group col-md-12">
    <label for="nickname">NICKNAME</label>
    <input type="text" class="form-control" id="nickname" placeholder="nickname">
  </div>
  <div class="form-group col-md-12">
    <label for="phonenumber">PHONE NUMBER</label>
    <input type="text" class="form-control" id="phonenumber" placeholder="PHONE NUMBER" value="#UnifiedEmployees.hphonenumber#" disabled>
  </div>
  <div class="form-group col-md-12">
    <label for="jobTitle">JOB TITLE</label>
    <input type="text" class="form-control" id="jobTitle" placeholder="Job Title" value="#UnifiedEmployees.jobTitleMunisDesc#" disabled>
  </div>
  <div class="form-group col-md-12">
    <label for="hiredate">HIRE DATE</label>
    <input type="text" class="form-control" id="hiredate" placeholder="HIRE DATE" value="#DATEFORMAT(UnifiedEmployees.hiredate,'mm/dd/yyyy')#" disabled>
  </div>
    <div class="form-group col-md-12">
    <label for="GROUP">GROUP</label>
    <input type="text" class="form-control" id="GROUP" placeholder="GROUP">
  </div>
 <div class="form-group col-md-12">

		  <div class="form-group col-md-12">
		  <button type="submit" class="btn btn-primary">SAVE</button>
		  </div>
  </div>
</form>

</cfoutput>


<CFELSE>

	NO EMPLOYEE DETAILS AVAILABLE FOR THIS ID
	
</CFIF>