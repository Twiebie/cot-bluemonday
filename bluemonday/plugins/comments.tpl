<!-- BEGIN: MAIN -->
	<!-- BEGIN: COMMENTS_TITLE -->
		<h2><a href="{COMMENTS_TITLE_URL}">{COMMENTS_TITLE}</a></h2>
	<!-- END: COMMENTS_TITLE -->
		{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
	<!-- BEGIN: COMMENTS_FORM_EDIT -->
		<div class="largeblock">
			<h2>{PHP.L.EditComment}</h2>
			<form id="comments" name="comments" action="{COMMENTS_FORM_POST}" method="post">
				<table class="cells">
					<tr>
						<td class="width20">{COMMENTS_POSTER_TITLE}:</td>
						<td class="width80">{COMMENTS_POSTER}</td>
					</tr>
					<tr>
						<td><b>{COMMENTS_IP_TITLE}:</b></td>
						<td>{COMMENTS_IP}</td>
					</tr>
					<tr>
						<td><b>{COMMENTS_DATE_TITLE}:</b></td>
						<td>{COMMENTS_DATE}</td>
					</tr>
					<tr>
						<td colspan="2">
							{COMMENTS_FORM_TEXT}
							<!-- IF {COMMENTS_FORM_PFS} -->{COMMENTS_FORM_PFS}<!-- ENDIF -->
							<!-- IF {COMMENTS_FORM_SFS} --><span class="spaced">{PHP.cfg.separator}</span>{COMMENTS_FORM_SFS}<!-- ENDIF -->
						</td>
					</tr>
					<tr>
						<td colspan="2" class="valid">
							<input type="submit" class="btn" value="{COMMENTS_FORM_UPDATE_BUTTON}">
						</td>
					</tr>
				</table>
			</form>
		</div>
	<!-- END: COMMENTS_FORM_EDIT -->
<!-- END: MAIN -->

<!-- BEGIN: COMMENTS -->
	<a name="comments"></a>

	<div style="display:{COMMENTS_DISPLAY}">
		<!-- BEGIN: COMMENTS_ROW -->
			<div class="commentrow">
					<a id="c{COMMENTS_ROW_ID}" name="c{COMMENTS_ROW_ID}"></a>
					<div id="comment-{COMMENTS_ROW_ID}">
						<div class="commentavatar">
							<!-- IF {COMMENTS_ROW_AUTHORID} == 0 -->
								<img src="/datas/defaultav/blank.png" alt="Guest" />
								<!-- ELSE -->
								<a href="{COMMENTS_ROW_AUTHORID|cot_url('users','m=details&id=$this')}">{COMMENTS_ROW_AUTHOR_AVATAR}</a>
							<!-- ENDIF -->
						</div>

						<div class="commentpost">
						<div class="commentuser">{COMMENTS_ROW_AUTHOR}</div>
						<div class="commentdate"><a href="{COMMENTS_ROW_URL}">{COMMENTS_ROW_DATE}</a></div>
							<div class="commenttext">{COMMENTS_ROW_TEXT}</div>
							<div class="commentedit">{COMMENTS_ROW_ADMIN}{COMMENTS_ROW_EDIT}</div>
						</div>
					</div>
			</div>
		<!-- END: COMMENTS_ROW -->

		<!-- BEGIN: PAGNAVIGATOR -->
			<!-- IF {COMMENTS_PAGES_PAGNAV} -->
			<p class="paging">{COMMENTS_PAGES_PAGESPREV}{COMMENTS_PAGES_PAGNAV}{COMMENTS_PAGES_PAGESNEXT}</p>
			<p class="paging"><span>{COMMENTS_PAGES_INFO}</span></p>
			<!-- ENDIF -->
		<!-- END: PAGNAVIGATOR -->

		<!-- BEGIN: COMMENTS_NEWCOMMENT -->
			<h3>{PHP.L.Newcomment}</h3>
			{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
			<form action="{COMMENTS_FORM_SEND}" method="post" name="newcomment">
				<!-- BEGIN: GUEST -->
				<div>{PHP.L.Name}: {COMMENTS_FORM_AUTHOR}</div>
				<!-- END: GUEST -->
				<div>
					{COMMENTS_FORM_TEXT}
					<!-- IF {COMMENTS_FORM_PFS} -->{COMMENTS_FORM_PFS}<!-- ENDIF -->
					<!-- IF {COMMENTS_FORM_SFS} --><span class="spaced">{PHP.cfg.separator}</span>{COMMENTS_FORM_SFS}<!-- ENDIF -->
				</div>

				<!-- IF {PHP.usr.id} == 0 AND {COMMENTS_FORM_VERIFYIMG} -->
				<div>{COMMENTS_FORM_VERIFYIMG}: {COMMENTS_FORM_VERIFY}</div>
				<!-- ENDIF -->
				<div class="textcenter">
					<button type="submit" class="btn">{PHP.L.Submit}</button>
				</div>
			</form>
			<div class="help">{COMMENTS_FORM_HINT}</div>
		<!-- END: COMMENTS_NEWCOMMENT -->
	</div>
<!-- END: COMMENTS -->