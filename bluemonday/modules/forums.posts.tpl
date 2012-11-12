<!-- BEGIN: MAIN -->

<div class="largeblock">
	<h2>{FORUMS_POSTS_PAGETITLE}</h2>
<!-- BEGIN: FORUMS_POSTS_ADMIN -->
	<h3>{PHP.L.Admin}</h3>
	<form id="movetopic" action="{FORUMS_POSTS_MOVE_URL}" method="post" class="marginbottom10">
		<table class="cellsbg">
			<tr>
				<td class="textright width10">{PHP.L.forums_topicoptions}:</td>
				<td class="width90">
					<a href="{FORUMS_POSTS_BUMP_URL}" title="{PHP.L.forums_explainbump}">{PHP.L.forums_bump}</a> {PHP.cfg.separator}
					<a href="{FORUMS_POSTS_LOCK_URL}" title="{PHP.L.forums_explainlock}">{PHP.L.Lock}</a> {PHP.cfg.separator}
					<a href="{FORUMS_POSTS_STICKY_URL}" title="{PHP.L.forums_explainsticky}">{PHP.L.forums_makesticky}</a> {PHP.cfg.separator}
					<a href="{FORUMS_POSTS_ANNOUNCE_URL}" title="{PHP.L.forums_explainannounce}">{PHP.L.forums_announcement}</a> {PHP.cfg.separator}
					<a href="{FORUMS_POSTS_PRIVATE_URL}" title="{PHP.L.forums_explainprivate}">{PHP.L.forums_private} (#)</a> {PHP.cfg.separator}
					<a href="{FORUMS_POSTS_CLEAR_URL}" title="{PHP.L.forums_explaindefault}">{PHP.L.Default}</a> {PHP.cfg.separator}
					<a href="{FORUMS_POSTS_DELETE_URL}" title="{PHP.L.forums_explaindelete}" class="confirmLink">{PHP.L.Delete}</a>
				</td>
			</tr>
			<tr>
				<td class="textright">{PHP.L.Move}:</td>
				<td>{FORUMS_POSTS_MOVEBOX_SELECT}<span class="small spaced">{FORUMS_POSTS_MOVEBOX_KEEP} {PHP.L.forums_keepmovedlink}</span><button type="submit" class="btn">{PHP.L.Move}</button></td>
			</tr>
		</table>
	</form>
	<hr />
<!-- END: FORUMS_POSTS_ADMIN -->

<!-- BEGIN: FORUMS_POSTS_TOPICPRIVATE -->
	<div class="error">{PHP.L.forums_privatetopic}</div>
<!-- END: FORUMS_POSTS_TOPICPRIVATE -->

<!-- BEGIN: POLLS_VIEW -->
	<h2>{POLLS_TITLE}</h2>
	{POLLS_FORM}
<!-- END: POLLS_VIEW -->

<!-- BEGIN: FORUMS_POSTS_ROW -->
	<table class="forumcells">
		<tr>
			<td colspan="2" class="forumcoltop">
				{FORUMS_POSTS_ROW_USERNAME}
				<span class="forumcoltopright">
					<a name="{FORUMS_POSTS_ROW_ID}" id="{FORUMS_POSTS_ROW_POSTID}" href="{FORUMS_POSTS_ROW_IDURL}" rel="nofollow">#{FORUMS_POSTS_ROW_ORDER}</a>&nbsp;|&nbsp;{FORUMS_POSTS_ROW_CREATION_STAMP|cot_date('l, F d, Y H:i', $this)}<!-- IF {FORUMS_POSTS_ROW_POSTERIP} -->&nbsp;|&nbsp;{FORUMS_POSTS_ROW_POSTERIP}<!-- ENDIF -->
				</span>
			</td>
		</tr>		
		
		<tr>
			<td class="{FORUMS_POSTS_ROW_ODDEVEN}">
			</td>
			<td class="{FORUMS_POSTS_ROW_ODDEVEN}">
			</td>
		</tr>
		
		<tr>
			<td class="{FORUMS_POSTS_ROW_ODDEVEN}" style="width: 100px;">
				<!-- IF {FORUMS_POSTS_ROW_USERAVATAR} -->{FORUMS_POSTS_ROW_USERAVATAR}<!-- ELSE -->{PHP.R.forums_noavatar}<!-- ENDIF -->
				<br />
				<br />
				<!-- IF {FORUMS_POSTS_ROW_USERCOUNTRYFLAG} -->{FORUMS_POSTS_ROW_USERCOUNTRYFLAG}<!-- ENDIF -->
				<br />
				<br />
				{FORUMS_POSTS_ROW_USERMAINGRP}
				<br />
				{PHP.L.forums_posts}: {FORUMS_POSTS_ROW_USERPOSTCOUNT}
			</td>
			<td class="{FORUMS_POSTS_ROW_ODDEVEN}">
				{FORUMS_POSTS_ROW_TEXT}
				<span class="forumpostedit">{FORUMS_POSTS_ROW_UPDATEDBY}</span>
			</td>
		</tr>
		<tr>
			<td class="{FORUMS_POSTS_ROW_ODDEVEN}">			
			</td>
			<td class="{FORUMS_POSTS_ROW_ODDEVEN}">
			<!-- IF {FORUMS_POSTS_ROW_USERTEXT} -->
			<div class="signature">
				{FORUMS_POSTS_ROW_USERTEXT}
			</div>
			<!-- ENDIF -->
			</td>
		</tr>
		
		<tr>
			<td colspan="2" class="forumcolbottom">
				<img src="themes/{PHP.theme}/img/online{FORUMS_POSTS_ROW_USERONLINE}.png" title="{PHP.L.Status}: {FORUMS_POSTS_ROW_USERONLINETITLE}" alt="Online" style="margin-top: 2px;" />
				<span class="forumcolbottomright">
				<!-- IF {FORUMS_POSTS_ROW_QUOTE} -->{FORUMS_POSTS_ROW_QUOTE}<!-- ENDIF --><!-- IF {FORUMS_POSTS_ROW_EDIT} -->&nbsp;|&nbsp;{FORUMS_POSTS_ROW_EDIT}<!-- ENDIF --><!-- IF {FORUMS_POSTS_ROW_DELETE} -->&nbsp;|&nbsp;{FORUMS_POSTS_ROW_DELETE}<!-- ENDIF --> {FORUMS_POSTS_ROW_BOTTOM}
				</span>
			</td>
		</tr>	
		
	</table>	
<!-- END: FORUMS_POSTS_ROW -->

	<p class="paging">{FORUMS_POSTS_PAGEPREV} {FORUMS_POSTS_PAGES} {FORUMS_POSTS_PAGENEXT}</p>

	<!-- BEGIN: FORUMS_POSTS_TOPICLOCKED -->
	<div class="error">{FORUMS_POSTS_TOPICLOCKED_BODY}</div>
	<!-- END: FORUMS_POSTS_TOPICLOCKED -->

	<!-- BEGIN: FORUMS_POSTS_ANTIBUMP -->
	<div>{FORUMS_POSTS_ANTIBUMP_BODY}</div>
	<!-- END: FORUMS_POSTS_ANTIBUMP -->

	{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}

<!-- BEGIN: FORUMS_POSTS_NEWPOST -->
	<form action="{FORUMS_POSTS_NEWPOST_SEND}" method="post" name="newpost">
		<table class="flat">
			<tr>
				<td>
					{FORUMS_POSTS_NEWPOST_TEXT}
					<div style="margin: 5px;">{FORUMS_POSTS_NEWPOST_MYPFS}</div>
				</td>
			</tr>
			<tr>
				<td class="valid"><button type="submit" class="btn">{PHP.L.Reply}</button></td>
			</tr>
		</table>
	</form>
<!-- END: FORUMS_POSTS_NEWPOST -->	
	
</div>
<!-- END: MAIN -->