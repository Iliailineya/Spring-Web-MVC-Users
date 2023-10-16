<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
    <%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="./fragments/head.jsp"%>
</head>
<body style="background-color: #E9ECEB;">
<%@include file="./fragments/bar_top.jsp"%>
<div class="container m-2">
	<div class="container-sm">
		<div class="row" style="background-color: #FCFCFC;">
			<div class="col-md-6 offset-md-3 pb-3">
				<h4 class="text-center mb-3 mt-3 text-warning">Update User</h4>
				<form action="${pageContext.request.contextPath}/handle-user" method="post">
				   <div>
                    <input type="hidden" value="${user.id}" name="id" class="form-control">
                   </div>
					<div>
                        <label for="firstName"><span style="font-size:12px;">First Name</span></label>
                        <input type="text" class="form-control fw-light" id="firstName" name="firstName"
                            placeholder="First Name...">
                    </div>
                    <div>
                    	<label for="lastName"><span style="font-size:12px;">Last Name</span></label>
                    	<input type="text" class="form-control fw-light" id="lastName" name="lastName"
                    		placeholder="Last Name...">
                    </div>
                    <div>
                    	<label for="email"><span style="font-size:12px;">Email</span></label>
                    	<input type="text" class="form-control fw-light" id="email" name="email"
                    	    placeholder="Email...">
                    </div>
					<div class="container text-left"><br>
						<a href="${pageContext.request.contextPath}/users" class="btn btn-outline-secondary btn-sm">Cancel</a>
						&nbsp;&nbsp;
						<button type="submit" class="btn btn-primary btn-sm">Update</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
</body>
</html>
