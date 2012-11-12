<!-- BEGIN: MAIN -->

<div class="leftsection">
	<div class="pageblock">
		<h2>{PAGE_TITLE}</h2>
		<!-- IF {PAGE_DESC} --><div class="pagedetails">{PAGE_DESC}</div><!-- ENDIF -->
		{PAGE_TEXT}

		<div class="tagsbox">
			<strong>{PHP.L.Tags}:</strong><br />
			<!-- BEGIN: PAGE_TAGS_ROW -->
							<!-- IF {PHP.tag_i} > 0 -->, <!-- ENDIF --><a href="{PAGE_TAGS_ROW_URL}" title="{PAGE_TAGS_ROW_TAG}" rel="nofollow">{PAGE_TAGS_ROW_TAG}</a>
			<!-- END: PAGE_TAGS_ROW -->
			<!-- BEGIN: PAGE_NO_TAGS -->
							{PAGE_NO_TAGS}
			<!-- END: PAGE_NO_TAGS -->
		</div>

		<!-- IF {PAGE_COMMENTS_DISPLAY} -->
		<h2>{PHP.L.comments_comments}</h2>
		{PAGE_COMMENTS_DISPLAY}
		<!-- ENDIF -->
	</div>
</div>

<div class="rightsection">
	<div class="rightblock">
		<div class="rightblocktitle">{PHP.L.PageInfo}</div>
		<!-- IF {PAGE_AUTHOR} -->
			<strong>{PHP.L.Author}:</strong> {PAGE_AUTHOR}<br />
		<!-- ENDIF -->
		<!-- IF {PAGE_DATE} -->
			<strong>{PHP.L.Published}:</strong> {PAGE_DATE_STAMP|cot_date('l jS M Y', $this)}<br />
		<!-- ENDIF -->
		<!-- IF {PAGE_CATPATH} -->
			<strong>{PHP.L.Filedunder}:</strong> {PAGE_CATPATH}<br /><br />
		<!-- ENDIF -->
		<!-- BEGIN: PAGE_ADMIN -->
		<h2 class="admin">{PHP.L.Adminpanel}</h2>
		<ul class="bullets">
			<!-- IF {PHP.usr.isadmin} -->
			<li><a href="{PHP|cot_url('admin')}">{PHP.L.Adminpanel}</a></li>
			<!-- ENDIF -->
			<li><a href="{PAGE_CAT|cot_url('page','m=add&c=$this')}">{PHP.L.page_addtitle}</a></li>
			<li>{PAGE_ADMIN_UNVALIDATE}</li>
			<li>{PAGE_ADMIN_EDIT}</li>
		</ul>
		<!-- END: PAGE_ADMIN -->

		<!-- BEGIN: PAGE_FILE -->
				<h2>{PHP.L.Download}</h2>
		<!-- BEGIN: MEMBERSONLY -->
					<strong>{PAGE_SHORTTITLE}</strong>
		<!-- END: MEMBERSONLY -->
		<!-- BEGIN: DOWNLOAD -->
					<strong><a href="{PAGE_FILE_URL}">{PAGE_SHORTTITLE}</a></strong>
		<!-- END: DOWNLOAD -->
					<p>{PHP.L.Filesize}, kB: {PAGE_FILE_SIZE}{PHP.L.kb}</p>
					<p>{PHP.L.Downloaded}: {PAGE_FILE_COUNT}</p>
		<!-- END: PAGE_FILE -->

		<!-- BEGIN: PAGE_MULTI -->
		<h2 class="info">{PHP.L.Summary}:</h2>
		{PAGE_MULTI_TABTITLES}
		<p class="paging">{PAGE_MULTI_TABNAV}</p>
		<!-- END: PAGE_MULTI -->
	</div>
</div>

<!-- END: MAIN -->