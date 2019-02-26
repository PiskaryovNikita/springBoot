<!doctype html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jstl/xml"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jstl/sql"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="java.util.ArrayList"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<script type='text/javascript'
	src='https://code.jquery.com/jquery-latest.min.js'></script>
<script src="https://www.google.com/recaptcha/api.js"></script>

</head>
<body>
	<script LANGUAGE="JavaScript">
		function validate() {
			isValid = (document.userform.password1.value == document.userform.password2.value)
					&& document.userform.password1.value.length > 5;
			if (isValid) {
				document.getElementById("info").innerHTML = "passwords are same and > 5 chars!";
			} else {
				document.getElementById("info").innerHTML = "passwords are different or < than 5 chars!";
			}
		}
	</script>
	<script>
		function enableBtn() {
			document.getElementById("button1").disabled = false;
		}
	</script>
	<div class="alert alert-primary" role="alert">
		<b><c:out value="${error}" /></b>
	</div>
	<c:url value="/registr" var="url" />
	<form:form method="post" action="${url}" name="userform"
		modelAttribute="user" class="needs-validation">
		<table align="center" width="300px" class="table">
			<tr>
				<td colspan=2 style="font-weight: bold;" align="center">Create
					User</td>
			</tr>
			<tr>
				<td align="right">Login</td>
				<td><form:input path="login" cssClass="form-control" /></td>
			</tr>
			<tr>
				<td></td>
				<td><font color='red'><form:errors path="login"
							class="has-error" /></font></td>
			</tr>
			<tr>
				<td align="right">Password</td>
				<td><form:password id="password1" path="password" cssClass="form-control" onkeyup="validate()" /></td>
			</tr>
			<tr>
				<td></td>
				<td><font color='red'><form:errors path="password"
							class="has-error" /></font></td>
			</tr>
			<tr>
				<td align="right">Password again</td>
				<td><input id="password2" type="password"
					class="form-control" onKeyUp="validate()" /></td>
			</tr>
			<tr>
				<td></td>
				<td><label id="info"></label></td>
			</tr>
			<tr>
				<td></td>
				<td><label id="info"></label></td>
			</tr>
			<tr>
				<td align="right">First Name</td>
				<td><form:input path="firstName" cssClass="form-control" /></td>
			</tr>
			<tr>
				<td></td>
				<td><font color='red'><form:errors path="firstName"
							class="has-error" /></font></td>
			</tr>
			<tr>
				<td align="right">Last Name</td>
				<td><form:input path="lastName" cssClass="form-control" /></td>
			</tr>
			<tr>
				<td></td>
				<td><font color='red'><form:errors path="lastName"
							class="has-error" /></font></td>
			</tr>
			<tr>
				<td align="right">Email</td>
				<td><form:input path="email" cssClass="form-control" /></td>
			</tr>
			<tr>
				<td></td>
				<td><font color='red'><form:errors path="email"
							class="has-error" /></font></td>
			</tr>
			<tr>
				<td align="right">Birth date</td>
				<td><form:input path="birthday" cssClass="form-control"
						type="date" min="1920-01-01" max="2008-12-31" id="exampleDate"
						class="form-control" /></td>
			</tr>
			<tr>
				<td></td>
				<td><font color='red'><form:errors path="role"
							class="has-error" /></font></td>
			</tr>
			<tr>
				<td></td>
				<td><div class="g-recaptcha"
						data-sitekey="6Ld6CHkUAAAAAMbqfh04Dqbul8wG_xmtOTwoc8T7"
						data-callback="enableBtn"></div></td>
			</tr>
			<tr>
				<td></td>
				<td><p>
						<input id="button1" class="ntSaveFormsSubmit" type="submit"
							value="Save"> <a href="/login"
							class="btn btn-secondary btn-lg active" role="button"
							aria-pressed="true">Cancel</a>
					</p></td>
			</tr>
			<tr>
				<td colspan=2 align="center" height="10px"></td>
			</tr>
		</table>
	</form:form>
	<script>
		document.getElementById("button1").disabled = true;
	</script>
</body>
</html>