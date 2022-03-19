

<CFIF ISDEFINED("url.action") and url.action EQ 'start-review' and url.do EQ 'steptwo'>


<form method="post" action="?action=start-review&do=stepThree">
<label>Start Date
<INPUT TYPE="TEXT" PLACEHOLDER="" disabled></INPUT>
</label>
<br>
<label>Forms
<INPUT TYPE="TEXT" PLACEHOLDER="" disabled></INPUT>
</label>
<br>
<INPUT TYPE="submit" class="btn-info" value="Add Form"><INPUT TYPE="submit" class="btn-success" value="Start Review">
</form>

<CFELSEIF ISDEFINED("url.action") and url.action EQ 'start-review' and url.do EQ 'stepthree'>

STEP THREE

<CFELSE>

<h4>CHOOSE A SUBJECT</h4>
<form method="post" action="?action=start-review&do=steptwo">


	<div class="mb-6">
	  <label for="formGroupExampleInput" class="form-label">Choose a subject</label>
	  <input type="text" class="form-control form-control-lg" id="formGroupExampleInput" placeholder="Begin typing employee name">
	</div>
	<div class="mb-6">
	  <label for="formGroupExampleInput2" class="form-label">Start date</label>
	  <input type="text" class="form-control form-control-lg" id="formGroupExampleInput2" placeholder="<cfoutput>#DATEFORMAT(NOW(),'mmmm D, YYYY')#</cfoutput>">
	</div>
	<Br>
    <div class="mb-3"><INPUT TYPE="submit" name="submit" class="btn-success" value="next"></div>
</form>

</cfif>