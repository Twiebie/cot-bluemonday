$().ready(function() {
	// Uniform
	$("select, input:checkbox, input:radio, input:file").uniform();
	
	//Form field examples
	$('.searchbox').example('Search...', { className: 'search-example' });
	$('.login-field').example('Username', { className: 'userpanel-example' });
	$('.password-field').example('Password', { className: 'userpanel-example' });
});