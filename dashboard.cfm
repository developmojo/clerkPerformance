	
	
	<CFIF ISDEFINED("reviewforms.recordcount") and reviewforms.recordcount GT 0>
	
	
		<H4>REVIEW FORMS</H4>
				
				<Table class="table table-responsive table-striped">
				<THEAD>
				<TR>
				<TH>NAME</TH><TH>SUBJECT</TH><TH>STATUS</TH><TH>ACTION</TH>
				<TR>
				</THEAD>
				<TBODY>
				<TR>
				<CFOUTPUT>
				<TD>FAKE Performance Review 2021</TD><TD>Full Name Placeholder</TD><TD>Completed 0 Days Ago</TD><TD>View ></TD>
				</TR>
				</CFOUTPUT>
				</TR>
				</TABLE>
	
	<CFELSE>
	
	<H4>REVIEW FORMS</H4>
		
		<P ALIGN="CENTER"><IMG SRC="_images/noreviewstodisplay.PNG"></P>
	
	</CFIF>
	

				