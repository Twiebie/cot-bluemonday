<!-- BEGIN: NEWS -->

<!-- BEGIN: PAGE_ROW -->
<div class="pageblock">
	<h1><a href="{PAGE_ROW_URL}">{PAGE_ROW_SHORTTITLE}</a></h1>
	<div class="pagedetails">{PAGE_ROW_DATE_STAMP|cot_date('l jS M Y', $this)} | {PAGE_ROW_CATPATH}</div>		
	{PAGE_ROW_TEXT_CUT}
	<div class="newsitembottom">
		<a href="{PAGE_ROW_URL}" class="btn">Read More</a> 
		<a href="{PAGE_ROW_URL}#com" class="newscomments">{PAGE_ROW_COMMENTS_COUNT} {PHP.L.comments_comments}</a>
	</div>
</div>
<!-- END: PAGE_ROW -->

<div class="pagenav">{PAGE_PAGEPREV} {PAGE_PAGENAV} {PAGE_PAGENEXT}</div>

<!-- END: NEWS -->