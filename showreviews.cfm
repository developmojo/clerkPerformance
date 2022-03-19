	
			<!---<A HREF="?action=createReview"><button type="button" class="btn btn-success btn-MD">CREATE NEW REVIEW</button></a>--->
			
			<button onclick="document.getElementById('id01').style.display='block'" class="btn btn-success">CREATE REVIEW</button>
			
			<br>
			<Table class="table table-responsive table-striped">
				<thead class="thead-dark">
				<TR>
				<TH>SUBJECT</TH><TH>FORM</TH><TH>AUTHORS DUE DATE</TH><TH>STATUS</TH>
				<TR>
				</THEAD>
				<TBODY>
				<TR>
				<CFOUTPUT>
				<TD>PLACEHOLDER TEXT</TD><TD>PLACEHOLDER TEXT</TD><TD>PLACEHOLDER TEXT</TD><TD>PLACEHOLDER TEXT</TD>
				</TR>
				</CFOUTPUT>
				</TR>
				</TABLE>
				
				<!-- Button trigger modal -->



<!---<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="_css/layout2.css">--->
	
	<style>
	#id01  {
		
		
		
		
	}
	
	input.modalradiobtn {
		
		padding:50px;
		font-color:red;
		font-size:2vh;
	}
	
	.modalText {
		
		padding-left:20px;
		
		font-size:3vh;
	}
	
	
	</style>
	


<div class="w3-container">
 
  

  <div id="id01" class="w3-modal">
    <div class="w3-modal-content">
      <div class="w3-container">
        <span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-display-topright">&times;</span>
        <span class="modalText">Which Review tempalte would you like to use?</span>
		<form method="post" action="?action=start-review&do=stepone">
		<UL>
		<CFOUTPUT> <!--- FUTURE QUERY LOOPING OVER TYPES OF TEMPLATES --->
		<LI CLASS="list-group-item">
		<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
		  <label class="form-check-label" for="flexRadioDefault1">
			NONE
		  </label>
		</li>
		<LI CLASS="list-group-item">
		<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
		  <label class="form-check-label" for="flexRadioDefault1">
			Clerk Administration/BOCC/IT - Annual Performance Review
		  </label>
		</li>
		<LI CLASS="list-group-item">
		<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
		  <label class="form-check-label" for="flexRadioDefault1">
			Clerk Administration/BOCC/IT - Self Evaluation
		  </label>
		</li>
		<LI CLASS="list-group-item">
		<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
		  <label class="form-check-label" for="flexRadioDefault1">
			Courts/Recording/HCH - Annual Performance Review
		  </label>
		</li>
		<LI CLASS="list-group-item">
		<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
		  <label class="form-check-label" for="flexRadioDefault1">
			Courts/Recording/HCH - Self Evaluation
		  </label>
		</li>
		</CFOUTPUT>
		<LI CLASS="list-group-item"><INPUT class="btn btn-success" TYPE="SUBMIT" VALUE="Create Review"></LI>
		</form>
		</UL>
		
      </div>
    </div>
  </div>
</div>

  
