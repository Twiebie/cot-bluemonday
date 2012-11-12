<!-- BEGIN: MAIN -->

	<div class="leftsection">
		{INDEX_NEWS}
	</div>

	<div class="rightsection">
		<!-- IF {RECENT_PAGES} -->
		{RECENT_PAGES}
		<!-- ENDIF -->

		<!-- IF {RECENT_FORUMS} -->
		{RECENT_FORUMS}
		<!-- ENDIF -->

		<!-- IF {INDEX_POLLS} -->
		<div class="rightblock">
			<div class="rightblocktitle">{PHP.L.LatestPoll}</div>
			{INDEX_POLLS}
		</div>
		<!-- ENDIF -->
	</div>

<!-- END: MAIN -->