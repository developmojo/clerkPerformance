<cfquery name="getMunisInfo" datasource="munis1235">

	SELECT DISTINCT 
	
	
	 pr_employee_mast.a_employee_number AS employeeid, 
	--a_location,
	pl_long_desc,
	--pl_short_desc,
	pr_job_class.a_job_class_desc,
	pr_employee_mast.a_name_first, 
	pr_employee_mast.a_name_minit, 
	pr_employee_mast.a_name_last, 

	pr_employee_mast.e_hire_date,
	pr_employee_mast.e_email,
	pr_employee_mast.e_supervisor
	,pr_employee_mast.a_name_first + ' ' + pr_employee_mast.a_name_last as fullname
	,LEFT(pr_employee_mast.a_name_first,1) + '' + pr_employee_mast.a_name_last as USERNAME
	,LEFT(pr_employee_mast.a_name_first,1) + '' + LEFT(pr_employee_mast.a_name_last,1) as INITIALS
	
	FROM pr_location
	
	join pr_employee_mast on pr_location.a_location = pr_employee_mast.a_location_primary
	join dbo.pr_job_class AS pr_job_class ON pr_employee_mast.a_job_code_primary = pr_job_class.a_job_class_code
	
	where pr_employee_mast.e_terminated_date IS NULL

				<CFIF structkeyexists(url, 'action') and url.action EQ 'viewuser' AND structkeyexists(url, 'drid') and url.drID NEQ ''>
					
					AND pr_employee_mast.a_employee_number = <cfqueryparam value="#url.DRid#" cfsqltype="cf_sql_integer">
				
				<CFELSEIF structkeyexists(url, 'action') and url.action EQ 'viewuser' AND structkeyexists(url, 'mgrid') AND url.mgrID NEQ '' >
					
					AND pr_employee_mast.a_employee_number = <cfqueryparam value="#url.mgrid#" cfsqltype="cf_sql_integer">
					
				<CFELSEIF structkeyexists(url, 'action') and url.action EQ 'viewuser' AND structkeyexists(url, 'eid') and url.eID NEQ ''>
				
					AND pr_employee_mast.a_employee_number = <cfqueryparam value="#url.eid#" cfsqltype="cf_sql_integer">

				<CFELSE>
					
						<CFIF structkeyexists(url, 'action')>
						
						<CFELSE>
							AND pr_employee_mast.a_employee_number = <cfqueryparam value="#session.employeeid#" cfsqltype="cf_sql_integer">
						</CFIF>
					
				</CFIF>
				
	ORDER BY pr_employee_mast.a_name_first ASC

</CFQUERY>