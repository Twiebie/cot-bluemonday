<!-- BEGIN: MAIN -->
	<div class="largeblock">

		<h2>{LIST_CATTITLE}</h2>
		<!-- BEGIN: LIST_ROWCAT -->
		<h3><a href="{LIST_ROWCAT_URL}" title="{LIST_ROWCAT_TITLE}">{LIST_ROWCAT_TITLE}</a> ({LIST_ROWCAT_COUNT})</h3>
		<!-- IF {LIST_ROWCAT_DESC} -->
		<p class="small">{LIST_ROWCAT_DESC}</p>
		<!-- ENDIF -->
		<!-- END: LIST_ROWCAT -->

		<!-- BEGIN: LIST_ROW -->
		<h3><a href="{LIST_ROW_URL}">{LIST_ROW_SHORTTITLE}</a></h3>
		<!-- IF {LIST_ROW_DESC} --><p class="pagedetails">{LIST_ROW_DESC}</p><!-- ENDIF -->
		<div>{LIST_ROW_TEXT_CUT}
		<!-- IF {LIST_ROW_TEXT_IS_CUT} -->{LIST_ROW_MORE}<!-- ENDIF --></div>
		<!-- IF {PHP.usr.isadmin} --><p>{LIST_ROW_ADMIN} ({LIST_ROW_COUNT})</p><!-- ENDIF -->
		<hr />
		<!-- END: LIST_ROW -->

		<!-- IF {LIST_TOP_PAGINATION} -->
		<p class="paging clear"><span>{PHP.L.Page} {LIST_TOP_CURRENTPAGE} {PHP.L.Of} {LIST_TOP_TOTALPAGES}</span>{LIST_TOP_PAGEPREV}{LIST_TOP_PAGINATION}{LIST_TOP_PAGENEXT}</p>
		<!-- ENDIF -->


		<!-- IF {PHP.usr.auth_write} -->

		<h3>{PHP.L.Admin}</h3>
		<ul class="bullets">
		<!-- IF {PHP.usr.isadmin} -->
		<li><a href="{PHP|cot_url('admin')}">{PHP.L.Adminpanel}</a></li>
		<!-- ENDIF -->
		<li>{LIST_SUBMITNEWPAGE}</li>
		</ul>

		<!-- ENDIF -->
		<div class="tagsbox">
		<h2>{PHP.L.Tags}</h2>
		{LIST_TAG_CLOUD}
		</div>

	</div>
<!-- END: MAIN -->