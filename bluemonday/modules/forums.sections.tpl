<!-- BEGIN: MAIN -->

<div class="largeblock">
	<h2>{FORUMS_SECTIONS_PAGETITLE}</h2>
<!-- BEGIN: FORUMS_SECTIONS -->
		<table class="cellsbg">
			<thead>
				<tr>
					<td class="coltopsection width5">&nbsp;</td>
					<td class="coltopsection width45">
						<a href="{PHP|cot_url('forums','c=fold#top')}" rel="nofollow">{PHP.L.forums_foldall}</a>
						<span class="spaced">/</span>
						<a href="{PHP|cot_url('forums','c=unfold#top')}" rel="nofollow">{PHP.L.forums_unfoldall}</a>
					</td>
					<td class="coltopsection width20">{PHP.L.Lastpost}</td>
					<td class="coltopsection width10">{PHP.L.forums_topics}</td>
					<td class="coltopsection width10">{PHP.L.forums_posts}</td>
					<td class="coltopsection width10">{PHP.L.Activity}</td>
				</tr>
			</thead>

<!-- BEGIN: CAT -->
			<tbody id="{FORUMS_SECTIONS_ROW_CAT}">
				<tr>
					<td class="forumssection" colspan="6">
							<a href="{FORUMS_SECTIONS_ROW_SECTIONSURL}" onclick="return toggleblock('blk_{FORUMS_SECTIONS_ROW_CAT}')">{FORUMS_SECTIONS_ROW_TITLE}</a>
					</td>
				</tr>
			</tbody>
			<tbody id="blk_{FORUMS_SECTIONS_ROW_CAT}"<!-- IF {FORUMS_SECTIONS_ROW_FOLD} --> style="display:none;"<!-- ENDIF -->>
 <!-- BEGIN: SECTION -->
				   <tr>
					<td class="centerall">
						{FORUMS_SECTIONS_ROW_ICON}
					</td>
					<td>
						<h4><a href="{FORUMS_SECTIONS_ROW_URL}">{FORUMS_SECTIONS_ROW_TITLE}</a></h4>
						<!-- IF {FORUMS_SECTIONS_ROW_DESC} -->
						<p class="small">{FORUMS_SECTIONS_ROW_DESC}</p>
						<!-- ENDIF -->

<!-- BEGIN: SUBSECTION -->
							<ul class="subforums">
							<li>{PHP.R.forums_icon_subforum}<a href="{FORUMS_SECTIONS_ROW_URL}">{FORUMS_SECTIONS_ROW_TITLE}</a></li>
							</ul>
<!-- END: SUBSECTION -->

					</td>
					<td class="leftall">
						{FORUMS_SECTIONS_ROW_LASTPOST}<br />
						{FORUMS_SECTIONS_ROW_LASTPOSTDATE} {FORUMS_SECTIONS_ROW_LASTPOSTER}
					</td>
					<td class="centerall">{FORUMS_SECTIONS_ROW_TOPICCOUNT}</td>
					<td class="centerall">{FORUMS_SECTIONS_ROW_POSTCOUNT}</td>
					<td class="centerall">{FORUMS_SECTIONS_ROW_ACTIVITY}</td>
				</tr>
<!-- END: SECTION -->
			</tbody>
<!-- END: CAT -->
		</table>
<!-- END: FORUMS_SECTIONS -->

	<div class="forumstools">
		<a class="btn" href="{PHP|cot_url('plug','e=search&amp;tab=frm')}">{PHP.L.forums_searchinforums}</a>
		<a class="btn" href="{PHP|cot_url('plug','e=forumstats')}">{PHP.L.Statistics}</a>
		<a class="btn" href="{PHP|cot_url('forums','n=markall')}" rel="nofollow">{PHP.L.forums_markasread}</a>
	</div>

	<div class="tagsbox">
	<h2>{PHP.L.Tags}</h2>
	{FORUMS_SECTIONS_TAG_CLOUD}
	</div>

</div>

<!-- END: MAIN -->