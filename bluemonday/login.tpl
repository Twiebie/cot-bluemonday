<!-- BEGIN: MAIN -->

<div class="largeblock">
	<h2 class="users">{USERS_AUTH_TITLE}</h2>
	<form name="login" action="{USERS_AUTH_SEND}" method="post">
		<table class="flat">
			<tr>
				<td class="width20">{PHP.L.users_nameormail}:</td>
				<td class="width80">{USERS_AUTH_USER}</td>
			</tr>
			<tr>
				<td>{PHP.L.Password}:</td>
				<td>{USERS_AUTH_PASSWORD}</td>
			</tr>
			<tr>
				<td></td>
				<td><p class="small">{USERS_AUTH_REMEMBER}&nbsp; {PHP.L.users_rememberme}</p></td>
			</tr>
			<tr>
				<td></td>
				<td><button type="submit" name="rlogin" value="0" class="btn">{PHP.L.Login}</button></td>
			</tr>
		</table>
	</form>

	<!-- BEGIN: USERS_AUTH_MAINTENANCE -->
		<div class="error clear">
			<h4>{PHP.L.users_maintenance1}</h4>
			<p>{PHP.L.users_maintenance2}</p>
		</div>
	<!-- END: USERS_AUTH_MAINTENANCE -->
</div>

<!-- END: MAIN -->