<!-- BEGIN: HEADER -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
<title>{HEADER_TITLE}</title>
<!-- IF {HEADER_META_DESCRIPTION} --><meta name="description" content="{HEADER_META_DESCRIPTION}" /><!-- ENDIF -->
<!-- IF {HEADER_META_KEYWORDS} --><meta name="keywords" content="{HEADER_META_KEYWORDS}" /><!-- ENDIF -->
<meta http-equiv="content-type" content="{HEADER_META_CONTENTTYPE}; charset=UTF-8" />
<meta name="generator" content="Cotonti http://www.cotonti.com" />
<link rel="canonical" href="{HEADER_CANONICAL_URL}" />
{HEADER_BASEHREF}
{HEADER_HEAD}
<link rel="shortcut icon" href="favicon.ico" />
<link rel="apple-touch-icon" href="apple-touch-icon.png" />
</head>

<body>
<!-- Blue Monday v1.0 // Copyright 2012 Twiebie -->
<div id="container">

	<div class="navbar">
		<div class="navbarmiddle">
			<div class="navbarcontent">

				<ul class="topnav">
					<li>
						<a href="{PHP.cfg.mainurl}" title="{PHP.L.Home}">
							{PHP.L.Home}
						</a>
					</li>
					<li>
						<a href="{PHP|cot_url('contact')}" title="{PHP.L.Contact}">
							{PHP.L.Contact}
						</a>
					</li>			
					<!-- IF {PHP.cot_modules.forums} -->
					<li>
						<a href="{PHP|cot_url('forums')}" title="{PHP.L.Forums}">
							{PHP.L.Forums}
						</a>
					</li>
					<!-- ENDIF -->
					<li>
						<a href="{PHP|cot_url('page','c=news')}" title="{PHP.L.News}">
							{PHP.L.News}
						</a>
					</li>
					<!-- IF {PHP.cot_modules.rss} -->
					<li>
						<a href="{PHP|cot_url('rss')}" title="{PHP.L.RSS_Feeds}">
							{PHP.L.RSSLink}
						</a>
					</li>
					<!-- ENDIF -->
				</ul>

			</div>

			<!-- IF {PHP.cot_plugins_active.search} -->
				<div id="searchwrap">
					<form id="search" name="name" action="{PHP|cot_url('plug', 'e=search')}" method="post">
						<input type="text" class="searchbox" name="sq" value="" maxlength="20" />
						<input type="submit" class="searchbox_submit" value=""/>
					</form>
				</div>
			<!-- ENDIF -->
		</div>
	</div>

	<div id="header">
		<div class="headermiddle">
			<!-- You can replace this with your own logo and slogan -->
			<div class="yourlogo"></div>
			<div class="yourslogan">{PHP.L.YourSlogan}</div>

			<div class="userpanel">
				<!-- BEGIN: GUEST -->
				<div class="reg-button"><a href="{PHP|cot_url('users','m=register')}" class="btn">{PHP.L.Register}</a></div>
				<a href="{PHP|cot_url('users','m=passrecover')}" class="lostpass">{PHP.L.LostPW}</a>
				<form action="login.php?m=auth&amp;a=check&amp;redirect=" method="post">
					<div class="sign-button"><button type="submit" class="btn">{PHP.L.Login}</button></div>
					<input type="text" name="rusername" maxlength="30" class="login-field" />
					<input type="password" name="rpassword" maxlength="30" class="password-field" />
				</form>
				<!-- END: GUEST -->

				<!-- BEGIN: USER -->
				<div class="loggedin">
					<ul class="accountlist">
						<span class="welcomeuser">{PHP.usr.name}</span>
						<li><a href="admin.php">{PHP.L.Adminpanel}</a></li>
						<li><a href="{PHP.usr.name|cot_url('users','m=profile&amp;u=$this')}">{PHP.L.Profile}</a></li>
						<!-- IF {PHP.usr.messages} > 0 -->
						<li><a href="{PHP|cot_url('pm')}" class="newpm">{PHP.usr.messages} {PHP.L.NewPM} PM</a></li>
						 <!-- ELSE -->
						<li><a href="{PHP|cot_url('pm')}">PM Inbox</a></li>
						<!-- ENDIF -->
						<!-- IF {PHP.cot_modules.pfs} --><li><a href="pfs.php" title="{PHP.L.PFS}">{PHP.L.PFS}</a></li><!-- ENDIF -->
						<li>{HEADER_NOTICES}</li>
						<li>{HEADER_USER_LOGINOUT}</li>
					</ul>
				</div>
				<!-- END: USER -->
			</div>
		</div>
	</div>

	<div id="contentholder">
	<div class="content">

<!-- END: HEADER -->