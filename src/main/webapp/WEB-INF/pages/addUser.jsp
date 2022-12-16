<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="Add User">
    <div class="container">
        <h1>Add User</h1>

    <form class="needs-validation" novalidate method="POST" action="${pageContext.request.contextPath}/AddUser">

        <div class="row">
            <div class="col-md-6 mb-3 ">
      <label for="username" class="form-label">Username</label>
      <input type="text" class="form-control" id="username" name="username" placeholder="Username" value="" required>
      <div class="invalid-feedback">
        Username is required.
      </div>
    </div>
  </div>

      <br>

        <div class="row">
            <div class="col-md-6 mb-3">
      <label for="email" class="form-label">Email</label>
      <input type="email" class="form-control" id="email" name="email" placeholder="Email" value="" required>
      <div class="invalid-feedback">
        Email is required.
      </div>
            </div>
        </div>

      <br>

        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="password" class="form-control" id="password" name="password" placeholder="" value="" required>
                <div class="invalid-feedback">
                    Password is required.
                </div>
            </div>
        </div>

        <br>

        <div class="row">
            <div class="col-md-6 mb-3">
      <label for="user_groups" class="form-label">Groups</label>
      <select class="custom-select d-block w-100" id="user_groups" name="user_groups" multiple>
        <c:forEach var="user_group" items="${userGroups}" varStatus="status">
          <option value="${user_group}">${user_group}</option>
        </c:forEach>
      </select>
            </div>
        </div>
      <br>


      <button class="btn btn-primary btn-lg btn-block" type="submit">Save</button>


    </form>
    </div>


</t:pageTemplate>
