<!-- BEGIN: MAIN -->
<div class="rightblock">
	<div class="rightblocktitle">{PHP.L.RecentForums}</div>
	<!-- BEGIN: TOPICS_ROW -->
		<div style="border-bottom: 1px solid #E8E8E8; padding-top: 5px; padding-bottom: 5px;">
			<div style="float: left; padding-right: 5px;">{FORUM_ROW_ICON}</div>
			<div style="overflow: hidden;">
					<a href="{FORUM_ROW.ft_lastposturl}">
						{FORUM_ROW_TITLE|cot_string_truncate('$this', 25)}
						<!-- IF {FORUM_ROW_TITLE} != {FORUM_ROW_TITLE|cot_string_truncate('$this', 25)} -->...
						<!-- ENDIF -->
					</a>
					({FORUM_ROW_POSTCOUNT})
			</div>
			{FORUM_ROW_TIMEAGO} ago by {FORUM_ROW_LASTPOSTER}
		</div>
	<!-- END: TOPICS_ROW -->
	<!-- BEGIN: NO_TOPICS_FOUND -->
	{PHP.L.recentitems_nonewposts}
	<!-- END: NO_TOPICS_FOUND -->
</div>
<!-- END: MAIN -->