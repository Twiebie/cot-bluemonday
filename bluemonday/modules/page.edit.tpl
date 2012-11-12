<!-- BEGIN: MAIN -->

<div class="largeblock">
	<h2>{PAGEEDIT_PAGETITLE} #{PAGEEDIT_FORM_ID}</h2>
	{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
	<form action="{PAGEEDIT_FORM_SEND}" enctype="multipart/form-data" method="post" name="pageform">
		<table class="cellsbg">
			<tr>
				<td class="width20">{PHP.L.Category}:</td>
				<td class="width80">{PAGEEDIT_FORM_CAT}</td>
			</tr>
			<tr>
				<td>{PHP.L.Title}:</td>
				<td>{PAGEEDIT_FORM_TITLE}</td>
			</tr>
			<tr>
				<td>{PHP.L.Description}:</td>
				<td>{PAGEEDIT_FORM_DESC}</td>
			</tr>
			<tr>
				<td>{PHP.L.Author}:</td>
				<td>{PAGEEDIT_FORM_AUTHOR}</td>
			</tr>
			<tr>
				<td>{PHP.L.Date}:</td>
				<td>{PAGEEDIT_FORM_DATE}</td>
			</tr>
			<tr>
				<td>{PHP.L.Begin}:</td>
				<td>{PAGEEDIT_FORM_BEGIN}</td>
			</tr>
			<tr>
				<td>{PHP.L.Expire}:</td>
				<td>{PAGEEDIT_FORM_EXPIRE}</td>
			</tr>
			<tr>
				<td>{PHP.L.Status}:</td>
				<td>{PAGEEDIT_FORM_LOCALSTATUS}</td>
			</tr>
			<tr>
				<td>{PHP.L.Alias}:</td>
				<td>{PAGEEDIT_FORM_ALIAS}</td>
			</tr>
			<tr>
				<td>{PHP.L.Keywords}:</td>
				<td>{PAGEEDIT_FORM_KEYWORDS}</td>
			</tr>
<!-- BEGIN: TAGS -->
			<tr>
				<td>{PAGEEDIT_TOP_TAGS}:</td>
				<td>{PAGEEDIT_FORM_TAGS} ({PAGEEDIT_TOP_TAGS_HINT})</td>
			</tr>
<!-- END: TAGS -->
<!-- BEGIN: ADMIN -->
			<tr>
				<td>{PHP.L.Owner}:</td>
				<td>{PAGEEDIT_FORM_OWNERID}</td>
			</tr>
			<tr>
				<td>{PHP.L.Hits}:</td>
				<td>{PAGEEDIT_FORM_PAGECOUNT}</td>
			</tr>
<!-- END: ADMIN -->
			<tr>
				<td>{PHP.L.Parser}:</td>
				<td>{PAGEEDIT_FORM_PARSER}</td>
			</tr>
			<tr>
				<td colspan="2">
					{PAGEEDIT_FORM_TEXT}
					<!-- IF {PAGEEDIT_FORM_PFS} -->{PAGEEDIT_FORM_PFS}<!-- ENDIF -->
					<!-- IF {PAGEEDIT_FORM_SFS} --><span class="spaced">{PHP.cfg.separator}</span>{PAGEEDIT_FORM_SFS}<!-- ENDIF -->
				</td>
			</tr>
			<tr>
				<td>{PHP.L.page_file}:<br />
					{PHP.themelang.pageadd.Filehint}</td>
				<td>{PAGEEDIT_FORM_FILE}</td>
			</tr>
			<tr>
				<td>{PHP.L.URL}:<br />{PHP.L.page_urlhint}</td>
				<td>{PAGEEDIT_FORM_URL}<br />{PAGEEDIT_FORM_PFS_URL_USER} &nbsp; {PAGEEDIT_FORM_PFS_URL_SITE}</td>
			</tr>
			<tr>
				<td>{PHP.L.page_filesize}:<br />{PHP.L.page_filesizehint}</td>
				<td>{PAGEEDIT_FORM_SIZE}</td>
			</tr>
			<tr>
				<td>{PHP.L.page_filehitcount}:<br />{PHP.L.page_filehitcounthint}</td>
				<td>{PAGEEDIT_FORM_FILECOUNT}</td>
			</tr>
			<tr>
				<td>{PHP.L.page_deletepage}:</td>
				<td>{PAGEEDIT_FORM_DELETE}</td>
			</tr>
			<tr>
				<td colspan="2" class="valid">
					<!-- IF {PHP.usr_can_publish} -->
					<button type="submit" name="rpagestate" class="btn" value="0">{PHP.L.Publish}</button>&nbsp;&nbsp;
					<!-- ENDIF -->
					<button type="submit" name="rpagestate" class="btn" value="2">{PHP.L.Saveasdraft}</button>&nbsp;
					<button type="submit" name="rpagestate" class="btn" value="1">{PHP.L.Submitforapproval}</button>
				</td>
			</tr>
		</table>
	</form>
</div>

<!-- END: MAIN -->