<!-- BEGIN: MAIN -->
<div class="rightblock">
	<div class="rightblocktitle">{PHP.L.RecentItems}</div>
	<!-- BEGIN: PAGE_ROW -->
	<div style="border-bottom: 1px solid #E8E8E8; padding-top: 5px; padding-bottom: 5px;">
		<div style="float: left; padding-right: 5px;">{PHP.R.icon_page}</div>
		<div style="overflow: hidden;">
			<a href="{PAGE_ROW_URL}">{PAGE_ROW_SHORTTITLE}</a>
			({PAGE_ROW_COMMENTS_COUNT})
		</div>
			{PAGE_ROW_DATE_STAMP|cot_date('M jS Y', $this)} | {PAGE_ROW_CATTITLE}
	</div>
	<!-- END: PAGE_ROW -->
</div>
<!-- END: MAIN -->