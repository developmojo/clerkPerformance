

<form>
<a href="?action=createnewform"><btn class="btn btn-success btn-sm">New Form</btn></a>
</form>



    <Table class="table table-striped table-condensed">
    <thead>
    <Tr>
    <th>NAME</th><th>LAST UPDATE</th><th>QUESTIONS</th>
    </thead>
    <tr>
    <TBODY>
    <cfoutput query="getReviewForms">
        <TD><a href="?action=editReviewForm&id=#reviewFormUUID#">#reviewFormName#</a></TD>
        <TD>#CreatedDate#</TD>
        <TD>#recordcount#</TD>
        </tr>
    </cfoutput>
    </BODY>
    </tr>
    </table>
