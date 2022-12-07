<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="Edit Car">
  <h1>Edit</h1>
  <div class="container">
  <form class="needs-validation" novalidate method="POST" action="${pageContext.request.contextPath}/EditCar">

    <label for="licenseplate" class="form-label">License Plate</label>
    <input type="text" class="form-control" id="licenseplate" name="license_plate" value="${car.licensePlate}" placeholder="License Plate" required>
    <div class="invalid-feedback">
      Valid license plate is required.
    </div>
    <br>

    <label for="parkingspot" class="form-label">Parking Spot</label>
    <input type="text" class="form-control" id="parkingspot" name="parking_spot" value="${car.parkingSpot}" placeholder="Parking Spot" required>
    <div class="invalid-feedback">
      Valid parking spot is required.
    </div>
    <br>

    <label for="owner" class="form-label">Owner</label>
    <select class="form-select" id="owner" name="owner_id" required="">
      <option value="">Choose...</option>
      <c:forEach var="user" items="${users}" varStatus="status">
        <option value="${user.id}" ${car.ownerName eq user.username ? 'selected' : ''}>${user.username}</option>
      </c:forEach>
    </select>
    <div class="invalid-feedback">
      Valid owner is required.
    </div>
    <br>

    <input type="hidden" name="car_id" value="${car.id}" />

    <button class="w-100 btn btn-primary btn-lg" type="submit">Save</button>


  </form>
  </div>

</t:pageTemplate>
