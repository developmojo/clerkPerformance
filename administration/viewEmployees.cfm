
<!--- REMOVED FROM THIS PAGE AND PLACED IN HEADER --->
<!--- <CFINCLUDE TEMPLATE="../_qry/_qry_pullUser_viewEmployees.cfm"> --->



<DIV class="administrationEmployees">
	
	

	
	
	
	
		  
		  
			<TABLE class="table table-hover table-responsive table-striped table-bordered">
			<thead class="thead-dark">
			
				<TR>
				<th scope="col">FULLNAME</TH>
				<th scope="col">PERMISSION LEVEL</TH>
				<th scope="col">EMAIL</TH>
				<th scope="col">SIGNED IN</TH>
				<th scope="col" width="50PX">SETTINGS</TH>
				<TR>
				
			</thead>
			<tbody>
				<Tr>
				<CFOUTPUT QUERY="UnifiedEmployees">

	
								<tr>
								<TD>&nbsp;&nbsp;&nbsp;&nbsp;<a href="?action=viewUser&eid=#eid#">#UCASE(fullname)#</a></SPAN></TD>
								<TD>SYSTEM PERMISSION LEVEL</TD>
								<TD>#UCASE(email)#</TD>
								<TD><span class="glyphicon glyphicon-check green"></span>&nbsp;&nbsp;&nbsp;&nbsp;Signed In</TD>
								<TD width="50PX" ALIGN="cENTER"><A HREF="?action=settings"><span class="glyphicon glyphicon-cog"></span></a></TD>
								<TR>
	
								
				</CFOUTPUT>
			  </tbody>	
			<TR>
			</TABLE>
			
</DIV>

