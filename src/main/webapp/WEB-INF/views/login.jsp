${error}
<form method="post" action="/login">
	<input type="email" name="email" placeholder="your email" value="${requestScope.email}"/>
	<input type="password" name="password" placeholder="your password" value="${requestScope.password}"/>
	<input type="submit" value="submit"/>
</form> 