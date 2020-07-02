<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<meta charset="utf-8"/>
	<title>코지 네일 가격표</title>
</head>
<body>
<div class="container-fluid" style="min-height: 66vh;">
	<h1>NAIL</h1>
	<div class="row">
      <!-- NAIL 여성 -->
      <div class="col-lg-4">
        <div class="card mb-5 mb-lg-0">
          <div class="card-body">
            <h5 class="card-title text-muted text-uppercase text-center">nail(여)</h5>
            <h6 class="card-price text-center">15,000</h6>
            <hr>
            <ul class="fa-ul">
              <li><span class="fa-li"><i class="fas fa-check"></i></span>케어</li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span>영양</li>
              <li class="text-muted"><span class="fa-li"><i class="fas fa-times"></i></span>손젤(풀칼라)</li>
            </ul>
          </div>
        </div>
      </div>
      <!-- Nail 여 -->
      <div class="col-lg-4">
        <div class="card mb-5 mb-lg-0">
          <div class="card-body">
            <h5 class="card-title text-muted text-uppercase text-center">nail(여)</h5>
            <h6 class="card-price text-center">50,000</h6>
            <hr>
            <ul class="fa-ul">
              <li><span class="fa-li"><i class="fas fa-check"></i></span><strong>케어</strong></li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span>영양</li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span>손젤(풀칼라)</li>
            </ul>
          </div>
        </div>
      </div>
      <!-- Nail 남-->
      <div class="col-lg-4">
        <div class="card mb-5 mb-lg-0">
          <div class="card-body">
            <h5 class="card-title text-muted text-uppercase text-center">nail(남)</h5>
            <h6 class="card-price text-center">20,000</h6>
            <hr>
            <ul class="fa-ul">
              <li><span class="fa-li"><i class="fas fa-check"></i></span><strong>케어</strong></li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span>영양</li>
              <li class="text-muted"><span class="fa-li"><i class="fas fa-times"></i></span>손젤(풀칼라)</li>
            </ul>
          </div>
        </div>
      </div>
    </div>

    <h1>PEDI</h1>
	<div class="row">
      <!-- PEDI -->
      <div class="col-lg-4">
        <div class="card mb-5 mb-lg-0">
          <div class="card-body">
            <h5 class="card-title text-muted text-uppercase text-center">pedi</h5>
            <h6 class="card-price text-center">25,000</h6>
            <hr>
            <ul class="fa-ul">
              <li><span class="fa-li"><i class="fas fa-check"></i></span>케어</li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span>영양</li>
              <li class="text-muted"><span class="fa-li"><i class="fas fa-times"></i></span>발젤(풀칼라)</li>
              <li class="text-muted"><span class="fa-li"><i class="fas fa-times"></i></span>발 각질</li>
            </ul>
          </div>
        </div>
      </div>
      <!-- PEDI -->
      <div class="col-lg-4">
        <div class="card mb-5 mb-lg-0">
          <div class="card-body">
            <h5 class="card-title text-muted text-uppercase text-center">nail(남)</h5>
            <h6 class="card-price text-center">50,000</h6>
            <hr>
            <ul class="fa-ul">
              <li><span class="fa-li"><i class="fas fa-check"></i></span><strong>케어</strong></li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span>영양</li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span>손젤(풀칼라)</li>
            </ul>
          </div>
        </div>
      </div>
      <!-- Nail 남-->
      <div class="col-lg-4">
        <div class="card mb-5 mb-lg-0">
          <div class="card-body">
            <h5 class="card-title text-muted text-uppercase text-center">nail(남)</h5>
            <h6 class="card-price text-center">20,000</h6>
            <hr>
            <ul class="fa-ul">
              <li><span class="fa-li"><i class="fas fa-check"></i></span><strong>케어</strong></li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span>영양</li>
              <li class="text-muted"><span class="fa-li"><i class="fas fa-times"></i></span>손젤(풀칼라)</li>
            </ul>
          </div>
        </div>
      </div>
    </div>







    <div class="row">
    	<!-- Pro Tier -->
      <div class="col-lg-4">
        <div class="card">
          <div class="card-body">
            <h5 class="card-title text-muted text-uppercase text-center">Pro</h5>
            <h6 class="card-price text-center">$49<span class="period">/month</span></h6>
            <hr>
            <ul class="fa-ul">
              <li><span class="fa-li"><i class="fas fa-check"></i></span><strong>Unlimited Users</strong></li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span>150GB Storage</li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span>Unlimited Public Projects</li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span>Community Access</li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span>Unlimited Private Projects</li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span>Dedicated Phone Support</li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span><strong>Unlimited</strong> Free Subdomains</li>
              <li><span class="fa-li"><i class="fas fa-check"></i></span>Monthly Status Reports</li>
            </ul>
          </div>
        </div>
      </div>
    </div>
</div>
<script>
	$(document).ready(function () {
		$("#priceplace-sub").slideUp(200);
		$("#priceplace-sub").show();
		$("#priceplace > a").parent().addClass("active");
	});
</script>
</body>
</html>