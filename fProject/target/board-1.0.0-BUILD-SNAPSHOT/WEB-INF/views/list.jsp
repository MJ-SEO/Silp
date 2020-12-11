<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>List of Boards</title>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<link href='http://fonts.googleapis.com/css?family=Oxygen:400,300,700' rel='stylesheet' type='text/css'>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="${path}/resources/js/skel.min.js"></script>
	<script src="${path}/resources/js/skel-panels.min.js"></script>
	<script src="${path}/resources/js/init.js"></script>
	<link rel="stylesheet" href="${path}/resources/css/skel-noscript.css" />
	<link rel="stylesheet" href="${path}/resources/css/style.css" />
		<style>
		#list {
		  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
		  border-collapse: collapse;
		  width: 100%;
		}
		#list td, #list th {
		  border: 1px solid #ddd;
		  padding: 8px;
		  text-align:center;
		}
		#list tr:nth-child(even){background-color: #f2f2f2;}
		#list tr:hover {background-color: #ddd;}
		#list th {
		  padding-top: 12px;
		  padding-bottom: 12px;
		  text-align: center;
		  background-color: black;
		  color: white;
		}
	</style>
</head>
<body class="homepage">

	<!-- Header -->
		<div id="header">
			<div class="container">

				<!-- Logo -->
					<div>
						<h1 text-align="center" >N분의 1</h1>
						<p> Hope you find useful informations! <p>
					</div>

				<!-- Nav -->
					<nav id="nav" float="right">
						<ul>
							<li>This page is to view boards!</li>
							<li>You must be signed up</li>
							<li>Enjoy your stay here!</li>
							
						</ul>
					</nav>

			</div>
		</div>
	<!-- Header -->

	<!-- Main -->
		<div id="main">
			<div class="container">
				<div class="row">

					<!-- Content -->
						<div id="content" class="12u skel-cell-important">
							<section>
								<h1>게시판</h1>
<p>안녕하세요~ <a href="/board//board/list">Go to main page</a> </p>

<table id="list" width="90%">
<tr>
	<th>Id</th>
	<th>Category</th>
	<th>Title</th>
	<th>Writer</th>
	<th>Content</th>
	<th>Regdate</th>
	<th>Edit</th>
	<th>Delete</th>
</tr>

<c:forEach items="${list}" var="u">
	<tr>
		<td>${u.seq}</td>
		<td>${u.category}</td>
		<td>${u.title}</td>
		<td>${u.writer}</td>
		<td>${u.content}</td>
		<td>${u.regdate}</td>
		<td><a href="editform/${u.seq}">Edit</a></td>
		<td><a href="deleteok/${u.seq}">Delete</a></td>
	</tr>
</c:forEach>
</table>
<a href="add">Add New Post</a>
							</section>
						</div>
					<!-- /Content -->
						
				</div>
			
			</div>
		</div>

	<!-- Footer -->
		<div id="footer">
			<div class="container">
				<div class="row">
					<div class="3u">
						<section>
							<ul class="style1">
								<li><img src="${path}/resources/images/ktx.jpeg" width="78" height="78" alt="">
									<p>1인 예악보다 4인 동반석을 구매하므로 훨신 경제적이다. </p>
								</li>
								<li><img src="${path}/resources/images/taxi.png" width="78" height="78" alt="">
									<p>동일한 목적지를 가는 경우, 여러명에서 택시를 나누어 타는것이 경제적이다. </p>
								</li>
								<li><img src="${path}/resources/images/ssg.jpeg" width="78" height="78" alt="">
									<p>함께 주문하여 배송비를 아낄수 있다. </p>
								</li>
							</ul>
						</section>
					</div>
					<div class="3u">
						<section>
							<ul class="style1">
								<li class="first"><img src="${path}/resources/images/chicken.jpeg" width="78" height="78" alt="">
									<p>치킨을 시키기 위해 드는 배달비를 나누어 내면 경제적이다. </p>
								</li>
								<li><img src="${path}/resources/images/rice.png" width="78" height="78" alt="">
									<p>덮덮밥을 시키기 위해 드는 배달비를 나누어 내면 경제적이다. </p>
								</li>
								<li><img src="${path}/resources/images/food.jpeg" width="78" height="78" alt="">
									<p>삼첩분식을 시키기 위해 드는 배달비를 나누어 내면 경제적이다. </p>
								</li>
							</ul>
						</section>
					</div>
					<div class="6u">
						<section>
							<header>
								<h2>이 서비스가 제공하는것!</h2>
							</header>
							<p>규모의 경제 및 공동구매를 통해 불필요한 지출을 최소화하고, 경제적인 소비를 할 수 있도록 돕는 서비스를 제공한다.</p>
							<ul class="default">
								<li><a href="https://ko.wikipedia.org/wiki/%EA%B3%B5%EB%8F%99%EA%B5%AC%EB%A7%A4">공동구매 </a></li>
								<li><a href="https://namu.wiki/w/%EA%B7%9C%EB%AA%A8%EC%9D%98%20%EA%B2%BD%EC%A0%9C">규모의 경제 </a></li>
								<li><a href="http://encykorea.aks.ac.kr/Contents/Item/E0030092">경제적인 소비 </a></li>
							</ul>
						</section>
					</div>
				</div>
			</div>
		</div>
	<!-- Footer -->

	<!-- Copyright -->
		<div id="copyright">
			<div class="container">
				Design: <a href=#>S&ampS</a> Class: <a href="#">Real Project 1</a>
			</div>
		</div>

		
</body>
</html>