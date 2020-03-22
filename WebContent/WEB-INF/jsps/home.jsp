
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Portal for health issuse</title>

<script src='https://kit.fontawesome.com/a076d05399.js'></script>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"> -->
<!--   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> -->
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script> -->



<style type="text/css">
html {
	overflow: scroll;
	overflow-x: hidden;
}

.pink-textarea


 


textarea




.md-textarea




:focus




:not


 


(
[
readonly
]


 


)
{
border-bottom




:


 


1
px


 


solid


 


#f48fb1




;
box-shadow




:


 


0
1
px


 


0
0
#f48fb1




;
}
.active-pink-textarea.md-form label.active {
	color: #f48fb1;
}

.active-pink-textarea.md-form textarea.md-textarea:focus:not ([readonly]
	 )+label {
	color: #f48fb1;
}

.amber-textarea


 


textarea




.md-textarea




:focus




:not


 


(
[
readonly
]


 


)
{
border-bottom




:


 


1
px


 


solid


 


#ffa000




;
box-shadow




:


 


0
1
px


 


0
0
#ffa000




;
}
.active-amber-textarea.md-form label.active {
	color: #ffa000;
}

.active-amber-textarea.md-form textarea.md-textarea:focus:not ([readonly]
	 )+label {
	color: #ffa000;
}

.active-pink-textarea-2 textarea.md-textarea {
	border-bottom: 1px solid #f48fb1;
	box-shadow: 0 1px 0 0 #f48fb1;
}

.active-pink-textarea-2.md-form label.active {
	color: #f48fb1;
}

.active-pink-textarea-2.md-form label {
	color: #f48fb1;
}

.active-pink-textarea-2.md-form textarea.md-textarea:focus:not ([readonly]
	 )+label {
	color: #f48fb1;
}

.active-amber-textarea-2 textarea.md-textarea {
	border-bottom: 1px solid #ffa000;
	box-shadow: 0 1px 0 0 #ffa000;
}

.active-amber-textarea-2.md-form label.active {
	color: #ffa000;
}

.active-amber-textarea-2.md-form label {
	color: #ffa000;
}

.active-amber-textarea-2.md-form textarea.md-textarea:focus:not ([readonly]
	 )+label {
	color: #ffa000;
}

::-webkit-scrollbar {
	width: 0px; /* Remove scrollbar space */
	background: transparent; /* Optional: just make scrollbar invisible */
}
/* Optional: show position indicator in red */
::-webkit-scrollbar-thumb {
	background: #FF0000;
}

body {
	font-family: "Calibri", Times, serif;
}

.search-form {
	border-radius: 30px 0px 0px 30px;
	/*border-radius: Top-left, Top-right, Bottom-right, Bottom-left;*/
}

#more {
	display: none;
}

.button:hover::before {
	color: #fff;
}

.button:hover::after {
	color: #000;
}

.modal {
	margin-top: 50px;
}

.card {
	padding-top: 20px;
	margin: 10px 0 20px 0;
	background-color: rgba(214, 224, 226, 0.2);
	border-top-width: 0;
	border-bottom-width: 2px;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px;
	-webkit-box-shadow: none;
	-moz-box-shadow: none;
	box-shadow: none;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

.card .card-heading {
	padding: 0 20px;
	margin: 0;
}

.card .card-heading.simple {
	font-size: 20px;
	font-weight: 300;
	color: #777;
	border-bottom: 1px solid #e5e5e5;
}

.card .card-heading.image img {
	display: inline-block;
	width: 46px;
	height: 46px;
	margin-right: 15px;
	vertical-align: top;
	border: 0;
	-webkit-border-radius: 50%;
	-moz-border-radius: 50%;
	border-radius: 50%;
}

.card .card-heading.image .card-heading-header {
	display: inline-block;
	vertical-align: top;
}

.card .card-heading.image .card-heading-header h3 {
	margin: 0;
	font-size: 14px;
	line-height: 16px;
	color: #262626;
}

.card .card-heading.image .card-heading-header span {
	font-size: 12px;
	color: #999999;
}

.card .card-body {
	padding: 0 20px;
	margin-top: 20px;
}

.card .card-media {
	padding: 0 20px;
	margin: 0 -14px;
}

.card .card-media img {
	max-width: 100%;
	max-height: 100%;
}

.card .card-actions {
	min-height: 30px;
	padding: 0 20px 20px 20px;
	margin: 20px 0 0 0;
}

.card .card-comments {
	padding: 20px;
	margin: 0;
	background-color: #f8f8f8;
}

.card .card-comments .comments-collapse-toggle {
	padding: 0;
	margin: 0 20px 12px 20px;
}

.card .card-comments .comments-collapse-toggle a, .card .card-comments .comments-collapse-toggle span
	{
	padding-right: 5px;
	overflow: hidden;
	font-size: 12px;
	color: #999;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.card-comments .media-heading {
	font-size: 13px;
	font-weight: bold;
}

.card.people {
	position: relative;
	display: inline-block;
	width: 170px;
	height: 300px;
	padding-top: 0;
	margin-left: 20px;
	overflow: hidden;
	vertical-align: top;
}

.card.people:first-child {
	margin-left: 0;
}

.card.people .card-top {
	position: absolute;
	top: 0;
	left: 0;
	display: inline-block;
	width: 170px;
	height: 150px;
	background-color: #ffffff;
}

.card.people .card-top.green {
	background-color: #53a93f;
}

.card.people .card-top.blue {
	background-color: #427fed;
}

.card.people .card-info {
	position: absolute;
	top: 150px;
	display: inline-block;
	width: 100%;
	height: 101px;
	overflow: hidden;
	background: #ffffff;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

.card.people .card-info .title {
	display: block;
	margin: 8px 14px 0 14px;
	overflow: hidden;
	font-size: 16px;
	font-weight: bold;
	line-height: 18px;
	color: #404040;
}

.card.people .card-info .desc {
	display: block;
	margin: 8px 14px 0 14px;
	overflow: hidden;
	font-size: 12px;
	line-height: 16px;
	color: #737373;
	text-overflow: ellipsis;
}

.card.people .card-bottom {
	position: absolute;
	bottom: 0;
	left: 0;
	display: inline-block;
	width: 100%;
	padding: 10px 20px;
	line-height: 29px;
	text-align: center;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

.card.hovercard {
	position: relative;
	padding-top: 0;
	overflow: hidden;
	text-align: center;
	background-color: rgba(214, 224, 226, 0.2);
}

.card.hovercard .cardheader {
	background-image:
		url("data:image/jpeg;base64,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");
	background-size: cover;
	height: 135px;
}

.card.hovercard .avatar {
	position: relative;
	top: -50px;
	margin-bottom: -50px;
}

.card.hovercard .avatar img {
	width: 100px;
	height: 100px;
	max-width: 100px;
	max-height: 100px;
	-webkit-border-radius: 50%;
	-moz-border-radius: 50%;
	border-radius: 50%;
	border: 5px solid rgba(255, 255, 255, 0.5);
}

.card.hovercard .info {
	padding: 4px 8px 10px;
}

.card.hovercard .info .title {
	margin-bottom: 4px;
	font-size: 24px;
	line-height: 1;
	color: #262626;
	vertical-align: middle;
}

.card.hovercard .info .desc {
	overflow: hidden;
	font-size: 12px;
	line-height: 20px;
	color: #737373;
	text-overflow: ellipsis;
}

.card.hovercard .bottom {
	padding: 0 20px;
	margin-bottom: 17px;
}

.navbar {
	position: fixed;
	top: 0;
	left: 0;
	z-index: 9999;
	width: 100%;
	height: 53px;
	color: #fff;
}

.recommend {
	position: fixed;
	right: 0;
}
</style>

</head>
<body>
	<!-- ###################################################################################################### -->





	<div class="container-fluid">
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#myNavbar">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">HashCoder</a>
				</div>

				<div class="collapse navbar-collapse container-fluid" id="myNavbar">
					<ul class="nav navbar-nav align-content-center">
						<li class="active nav nav-item"><a href="#"><span
								class="glyphicon glyphicon-home"> Home</a></li>
						<!--         <li class=" nav nav-item"><a href="#"><span class=" glyphicon glyphicon-edit"> Answer</a></li>
 -->
						<li class=" nav nav-item"><a data-toggle="modal"
							data-target="#experiencemodal"><span
								class=" glyphicon glyphicon-book ">
									Experience&nbsp;&&nbsp;Tips</a></li>
						<!-- <li class=" nav nav-item"><a href="#"><span
								class=" glyphicon glyphicon-bullhorn"> Notification</a></li> -->
						<li class=" nav nav-item"><a data-toggle="modal"
							data-target="#addquestionmodal"
							class="btn btn-toolbar btn-danger text text-light"><span
								class="button"> Add Question</span></a></li>
					</ul>

					<ul class="nav navbar-nav navbar-right">



						<!-- Experience and tip modal -->

						<!-- Modal -->
						<div class="modal fade" id="experiencemodal" role="dialog"
							style="color: #000;">
							<div class="modal-dialog modal-lg">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h4 class="modal-title">Experience $ Tips</h4>
									</div>
									<div class="modal-body">

										<c:forEach var="post" items="${posts}">

											<c:if test="${ user.getId() != post.getUser_id() }">

												<div class="row ">


												<c:choose>
														<c:when
															test="${loginDB.getUserTypeById(post.getUser_id()).getType() eq 'USER'}">
															
															<div class="col-md-4">
																<i class="fas fa-user" style="font-size: 80px;"></i>
															</div>
															<div class="col-sm-6">
																<h2>Anonymous</h2>
																<h4>Avg Rating : ${post.getAvg_rating() }</h4>
															</div>
															
														</c:when>
														<c:otherwise>
															
															<div class="col-md-4">
																<i class="fas fa-user-md" style="font-size: 80px;"></i>
															</div>
															<div class="col-sm-6">
																<h2><span
																	class="	glyphicon glyphicon-ok-circle"></span>Verified</h2>
																<h4>Avg Rating : ${post.getAvg_rating() }</h4>
															</div>
															
														</c:otherwise>
												</c:choose>


													

													<div class="col-sm-2">

														<c:set var="isfollow" value="0" />

														<c:forEach var="folow" items="${followings}">


															<c:if test="${post.getUser_id() == folow.getId() }">
																<c:set var="isfollow" value="1" />
															</c:if>

														</c:forEach>


														<c:choose>

															<c:when test="${isfollow == 0 }">
																<a type="button" class="btn btn-success"
																	href="follow-user?user_id=${user.getId()}&otherUser_id=${post.getUser_id()}"
																	style="margin-top: 30px;"> Follow <span
																	class="glyphicon glyphicon-plus"></span></a>

															</c:when>
															<c:otherwise>
																<a type="button" class="btn btn-warning"
																	style="margin-top: 30px;"> Followed <span
																	class="	glyphicon glyphicon-ok-circle"></span></a>
															</c:otherwise>
														</c:choose>



													</div>
												</div>

												<div class="row">

													<!-- <h3 style="align-content: center;">What is Anxiety</h3> -->
													<p class="card-text panel-body">${post.getPost() }
														<span id="dots">...</span><span id="more"> </span>
													</p>
													<div>
														<a onclick="myFunction()" id="myBtn"
															class="btn  float-right panel-footer"
															style="background-color: transparent;">Read more <span
															class="glyphicon glyphicon-forward"></a>

													</div>
												</div>


												<div class="box">
													<a
														href="rate-post?user_id=${user.getId()}&post_id=${post.getId()}&rating=5"
														class="ion-android-star b1"></a> <a
														href="rate-post?user_id=${user.getId()}&post_id=${post.getId()}&rating=4"
														class="ion-android-star b2"></a> <a
														href="rate-post?user_id=${user.getId()}&post_id=${post.getId()}&rating=3"
														class="ion-android-star b3"></a> <a
														href="rate-post?user_id=${user.getId()}&post_id=${post.getId()}&rating=2"
														class="ion-android-star b4"></a> <a
														href="rate-post?user_id=${user.getId()}&post_id=${post.getId()}&rating=1"
														class="ion-android-star b5"></a>

													<style>
@import
	"http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css";

.box {
	position: relative;
	/* top: 50%;
    left: 50%; */
	/* transform: translate(-50%,-50%); */
	direction: rtl;
}

.box a {
	font-size: 40px;
	color: #313131;
	transition: 0.3s all;
}

.box a:hover {
	color: #f1c40f;
}

.b1:hover ~ a {
	color: #f1c40f;
}

.b2:hover ~ a {
	color: #f1c40f;
}

.b3:hover ~ a {
	color: #f1c40f;
}

.b4:hover ~ a {
	color: #f1c40f;
}

.b5:hover ~ a {
	color: #f1c40f;
}
</style>

												</div>

											</c:if>


											<hr>

										</c:forEach>






									</div>


									<div class="modal-footer">
										<button type="button" class="btn btn-danger"
											data-dismiss="modal">Close</button>
									</div>
								</div>
							</div>
						</div>
						<!-- end-->
						<!-- Add Question Modal -->
						<div id="addquestionmodal" class="modal fade" role="dialog">
							<div class="modal-dialog">

								<!-- Modal content-->
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h4 class="modal-title" style="color: #000;">Add
											Questions</h4>
									</div>
									<div class="modal-body">

										<div class="form-group">
											<label for="sel1">Category: </label> <select
												class="form-control" id="category">
												<option>Anxiety</option>
												<option>Obesity</option>
											</select>
										</div>
										<!-- <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Category
								  <span class="caret"></span></button>
								  <ul class="dropdown-menu">
								    <li><a href="#">HTML</a></li>
								    <li><a href="#">CSS</a></li>
								    <li><a href="#">JavaScript</a></li>
								  </ul> -->

										<br> <br>
										<form method="post" action="addQuery?user_id=${user.getId() }">
											<div class=" md-form mb-4 pink-textarea active-pink-textarea">
												<input name="queryField" id="form18"
													class="md-textarea form-control" rows="3"></input> <label
													for="form18">Type your question here</label>
											</div>
											<button type="submit" class="btn btn-danger">Submit</button>
										</form>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default"
											data-dismiss="modal">Close</button>
									</div>
								</div>

							</div>
						</div>

						<!-- Modal End -->







						<!-- Login and signup  modal button  -->
						<!--  <li class=" nav nav-item"><a data-toggle="modal" data-target="#signupmodal"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>

        <li class=" nav nav-item"><a data-toggle="modal" data-target="#loginmodal"><span class="glyphicon glyphicon-log-in"></span> Login</a></li> -->


						<li class=" nav nav-item"><a href='<c:url value="/"></c:url>'><span
								class="	glyphicon glyphicon-off"></span> Logout</a></li>

						<!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">Open Registration Form</button>
 -->

					</ul>



				</div>
			</div>
		</nav>
		<hr>
	</div>
	<!-- ###################################################################################################### -->

	<div class="row container-fluid">
		<div class="col-md-3 ">
			<br>
			<center style="padding-top: 8px;">
				<strong><h3>User Profile</h3></strong>
			</center>
			<hr>
			<div class="card hovercard ">
				<div class="cardheader "></div>

				<c:choose>
					<c:when
						test="${loginDB.getUserTypeById(user.getId()).getType() eq 'USER'}">
						<div>
							<i class="fa fa-user"
								style="font-size: 80px;"></i>
						</div>
					</c:when>
					<c:otherwise>
						<div>
							<i class="fa fa-user-md"
								style="font-size: 80px;"></i>
						</div>
					</c:otherwise>
				</c:choose>


				<!-- <div class="avatar">
					<i class="fas fa-user" style="font-size: 80px;"></i>
					<!-- <img alt="" src="img.png"> 
				</div> -->
				<div class="info">
					<div class="title">
						<h3>
							<span class="userprofilecss">${user.getName()}</span>
						</h3>
					</div>
					<div class="desc">${type}</div>

				</div>


				<div class="">
					<!-- <ul>
						<li>Following</li>
						<li>Total Answer</li>
						<li>Total Question</li>
						<li>Profile</li>
					</ul>glyphicon glyphicon-user
 -->

					<!-- <a data-toggle="modal" data-target="#myModal">Do I have
				an anxiety disorder? <span class="badge">12</span>
			</a> -->


					<ul class="list-group">
						<li
							class="list-group-item d-flex justify-content-between align-items-center"><a
							data-toggle="modal" data-target="#followingmodal">Following <span
								class="glyphicon glyphicon-user "></span> <span
								class="align-content-end badge badge-primary badge-pill">${user.getFollowing().size() }</span></a>
						</li>

						<li
							class="list-group-item d-flex justify-content-between align-items-center"><a
							data-toggle="modal" data-target="#followermodal">Followers <span
								class="glyphicon glyphicon-globe "></span> <span
								class="align-content-end badge badge-primary badge-pill">${user.getFollowers().size()}</span></a>
						</li>

						<li
							class="list-group-item d-flex justify-content-between align-items-center"><a
							data-toggle="modal" data-target="#answermodal"> <span>Answers</span>
								<span class="	glyphicon glyphicon-edit "> </span> <span
								class="badge badge-primary badge-pill">${user.getAnswers().size() }</span></a></li>

						<li
							class="list-group-item d-flex justify-content-between align-items-center">
							<a data-toggle="modal" data-target="#questionmodal"><span>Question</span>
								<span class="glyphicon glyphicon-question-sign "></span> <span
								class="badge badge-primary badge-pill">${user.getQueries().size() }</span></a>
						</li>

						<li
							class="list-group-item d-flex justify-content-between align-items-center">
							<a data-toggle="modal" data-target="#postmodal"><span>Add
									Experience & Tips</span> <span class="	glyphicon glyphicon-pencil "></span>
								<span class="badge badge-primary badge-pill">${user.getPosts().size() }</span></a>
						</li>

					</ul>

				</div>


				<!-- followers Modal -->
				<div id="followermodal" class="modal fade" role="dialog">
					<div class="modal-dialog">

						<!-- Modal content-->
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">&times;</button>
								<h4 class="modal-title">Followers</h4>
							</div>
							<div class="modal-body pre-scrollable">
								<div class="form-group">

									<c:forEach items="${user.getFollowers() }" var="follower">
										<!-- card -->
										<div class="card mb-3" style="max-width: 540px;">
											<div class="row ">
												<div class="col-sm-4 col-md-2 col-xs-2">
													<!-- <img src="back.png" class="card-img" alt="..."> -->

													<c:choose>
														<c:when
															test="${loginDB.getUserTypeById(follower.getId()).getType() eq 'USER'}">
															<div>
																<i class="fa fa-user"
																	style="font-size: 40px; padding-bottom: 20px;"></i>
															</div>
														</c:when>
														<c:otherwise>
															<div>
																<i class="fa fa-user-md"
																	style="font-size: 40px; padding-bottom: 20px;"></i>
															</div>
														</c:otherwise>
													</c:choose>






												</div>
												<div class="col-sm-4 col-md-2 col-xs-2">

													<h4 class="card-title" align="left"
														style="align-items: left; padding-left: 10px;">${follower.getName() }</h4>


												</div>
												<div class="col-sm-4 col-md-8 col-xs-8">


													<c:set var="isfollow" value="0"></c:set>
													<c:forEach var="folow" items="${followings}">
														<c:if test="${follower.getId() == folow.getId() }">
															<c:set var="isfollow" value="1" />
														</c:if>
													</c:forEach>


													<c:choose>

														<c:when test="${isfollow == 0 }">
															<a type="button" class="btn btn-success"
																href="follow-user?user_id=${user.getId()}&otherUser_id=${follower.getId()}"
																style="margin-bottom: 10px;"> Follow <span
																class="glyphicon glyphicon-plus"></span></a>

														</c:when>
														<c:otherwise>
															<a type="button" class="btn btn-warning"
																style="margin-bottom: 10px;"> Followed <span
																class="	glyphicon glyphicon-ok-circle"></span></a>
														</c:otherwise>
													</c:choose>

													&nbsp; <span class="glyphicon glyphicon-star"
														style="padding-top: 10px;">Rating<span
														class="badge"> ${follower.getRating()}</span></span>
												</div>

											</div>
										</div>
										<!-- card end -->

									</c:forEach>
								</div>

							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-danger"
									data-dismiss="modal">Close</button>
							</div>
						</div>

					</div>
				</div>

				<!-- Modal End -->

				<!-- followering Modal -->
				<div id="followingmodal" class="modal fade" role="dialog">
					<div class="modal-dialog">

						<!-- Modal content-->
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">&times;</button>
								<h4 class="modal-title">Following</h4>
							</div>
							<div class="modal-body pre-scrollable">
								<div class="form-group">

									<c:forEach items="${user.getFollowing() }" var="following">
										<!-- card -->
										<div class="card mb-3" style="max-width: 540px;">
											<div class="row ">
												<div class="col-sm-4 col-md-3 col-xs-2">
													<!-- <img src="back.png" class="card-img" alt="..."> -->
													
														<c:choose>
														<c:when
															test="${loginDB.getUserTypeById(following.getId()).getType() eq 'USER'}">
															<div>
																<i class="fa fa-user"
																	style="font-size: 40px; padding-bottom: 20px;"></i>
															</div>
														</c:when>
														<c:otherwise>
															<div>
																<i class="fa fa-user-md"
																	style="font-size: 40px; padding-bottom: 20px;"></i>
															</div>
														</c:otherwise>
													</c:choose>
													
													
										

												</div>
												<div class="col-sm-4 col-md-3 col-xs-2">

													<h4 class="card-title" align="left"
														style="align-items: left; padding-left: 10px;">${following.getName() }</h4>


												</div>
												<div class="col-sm-4 col-md-3 col-xs-2">


													<span class="glyphicon glyphicon-star"
														style="padding-top: 10px;"> Rating:<span
														class="badge">${following.getRating()}</span></span>
												</div>

											</div>
										</div>
										<!-- card end -->
									</c:forEach>
								</div>

							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-danger"
									data-dismiss="modal">Close</button>
							</div>
						</div>

					</div>
				</div>

				<!-- Modal End -->



				<!-- question Modal -->
				<div id="questionmodal" class="modal fade" role="dialog">
					<div class="modal-dialog">

						<!-- Modal content-->
						<div class="modal-content pre-scrollable">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">&times;</button>
								<h4 class="modal-title">
									Question Asked By <strong>${user.getName() }</strong>
								</h4>
							</div>

							<c:forEach items="${user.getQueries() }" var="queryByUser">

								<div class="modal-body">
									<h3 class="panel-heading card-danger card-title">
										<strong>${queryByUser.getQuery() } </strong>
									</h3>



									<c:forEach items="${ queryByUser.getAnswers()}" var="ans">
										<h3>Answer :</h3>
				average rating : ${ans.getAvg_rating() } 
						<p class="card-text panel-body">
											${ ans.getAnswer()} <span id="dots0${ans.getId() }">...</span><span
												id="more0${ans.getId() }"> ${ ans.answer} </span>

										</p>
										<div>
											<a
												onclick="myFunction(dots0${ans.getId() },more0${ans.getId() },myBtn0${ans.getId() })"
												id="myBtn0${ans.getId() }"
												class="btn  float-right panel-footer"
												style="background-color: transparent;">Read more <span
												class="glyphicon glyphicon-forward"></span></a> <a
												data-toggle="modal" data-target="#answer">Next Answer </a>

										</div>

										<hr>

									</c:forEach>

								</div>

							</c:forEach>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">Close</button>
							</div>
						</div>

					</div>
				</div>

				<!-- Modal End -->


				<!-- answers Modal -->
				<div id="answermodal" class="modal fade" role="dialog">
					<div class="modal-dialog">

						<!-- Modal content-->
						<div class="modal-content pre-scrollable">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">&times;</button>
								<h4 class="modal-title">
									Answer By <strong>${user.getName() }</strong>
								</h4>
							</div>

							<c:forEach items="${user.getAnswers() }" var="ans">

								<div class="modal-body">
									<h3 class="panel-heading card-danger card-title">

										<c:forEach items="${queries}" var="question">
											<c:if test="${question.getId()== ans.getQuery_id()}">
												<c:set value="${question.getQuery() }" var="queruy"></c:set>
											</c:if>
										</c:forEach>

										${ans.getQuery_id() }- ${queruy}
										<%--
										 
										<strong>${queryDB.getQueryByUserId(ans.getUser_id()).getQuery() }</strong>  --%>

									</h3>
									<p class="card-text panel-body">
										${ ans.getAnswer()}<span id="dots1${ans.getId() }">...</span><span
											id="more1${ans.getId() }">${ ans.getAnswer()}</span>
									</p>
									<div>
										<a
											onclick="myFunction(dots1${ans.getId() },more1${ans.getId()},  myBtn1${ans.getId() })"
											id="myBtn1${ans.getId() }"
											class="btn  float-right panel-footer"
											style="background-color: transparent;">Read more <span
											class="glyphicon glyphicon-forward"></span></a>

									</div>
								</div>

							</c:forEach>

							<div class="modal-footer">
								<button type="button" class="btn btn-danger"
									data-dismiss="modal">Close</button>
							</div>
						</div>

					</div>
				</div>

				<!--  End -->
				<!-- post Modal -->
				<div id="postmodal" class="modal fade" role="dialog">
					<div class="modal-dialog">

						<!-- Modal content-->
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal">&times;</button>
								<h4 class="modal-title">Add Experience and Tips</h4>
							</div>
							<div class="modal-body">
								<form action="uploadPost?user_id=${user.getId()}" method="post">
									<div class="form-group">

										<select class="form-control" name="category" id="category">
											<option value="1">Anxiety</option>
											<option value="0">Obesity</option>
										</select>
									</div>
									<!-- 
								  <label for="sel1">Category: </label>
								  
								  <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Category
								  <span class="caret"></span></button>
								  <ul class="dropdown-menu">
								    <li><a href="#">HTML</a></li>
								    <li><a href="#">CSS</a></li>
								    <li><a href="#">JavaScript</a></li>
								  </ul> -->

									<br> <br>
									<div class=" md-form mb-4 pink-textarea active-pink-textarea">

										<textarea id="form18" name="postData"
											class="md-textarea form-control" rows="3"></textarea>

										<label for="form18">Type Experience and tips</label>

									</div>
									<input type="submit" value="submit" class="btn btn-danger">

								</form>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">Close</button>
							</div>
						</div>

					</div>
				</div>

				<!-- Modal End -->

				<div class="bottom">
					<h3>
						<span class="glyphicon glyphicon-star"> Rating
							${user.getRating() } 
					</h3>
				</div>
			</div>

		</div>


		<div class="col-md-6">
			<br>
			<center>
				<strong><h2>Question and Answer</h2></strong>
			</center>
			<hr>

			<!-- 			
			<div class="input-group card-body">
				<input type="text" class="form-control search-form"
					placeholder="Search Question"> <span
					class="input-group-btn">
					<button type="submit" class="btn search-btn "
						data-target="#search-form" name="searchbtn">
						  <span	class="	glyphicon glyphicon-search"></span> Search
						</i>
					</button>
				</span>
			</div>
			
				
 -->
			<h3>
				<span class="label label-primary">Latest</span> Questions
			</h3>

			<hr>



			<br>

			<div class=" panel panel-danger card-body pre-scrollable"
				style="height: 100%; width: 100%; overflow: scroll; overflow-x: hidden; overflow-y: scroll;">
				<c:forEach items="${queries}" var="query">

					<h3 class="panel-heading card-danger card-title">
						${query.getQuery()}</h3>
					<c:set var="c" value="0"></c:set>

					<a data-toggle="modal" data-target="#myModal${query.getId() }"
						class="btn  float-left panel-footer"
						style="background-color: transparent;">Answer <span
						class="	glyphicon glyphicon-pencil"></a>

					<c:set var="quesid" value="${query.getId() }" />

					<c:forEach items="${query.getAnswers() }" var="ans">
						<c:if test="${c == 0 }">
						
						Rated <strong>${answerDB.getAnswerByAnswerId(ans.getId()).getAvg_rating()  }</strong>

							<c:set var="c" value="1"></c:set>
							<p class="card-text panel-body">
								${ans.getAnswer()}<span id="dots2${ans.getId()}">...</span><span
									id="more2${ans.getId()}">${ans.getAnswer()}</span>
							</p>
							<div>
								<a
									onclick="myFunction(dots2${ans.getId()}, more2${ans.getId()}, myBtn2${ans.getId()})"
									id="myBtn2${ans.getId()}" class="btn  float-right panel-footer"
									style="background-color: transparent;">Read more <span
									class="glyphicon glyphicon-forward"></span></a> <a
									data-toggle="modal" data-target="#answer${query.getId() }">Total
									Answer<span class="badge">${query.getAnswers().size() }</span>
								</a> &nbsp;&nbsp;&nbsp; Rate answer:





								<div class="box">
									<a
										href="rate-answer?user_id=${user.getId()}&answer_id=${ans.getId()}&rating=5"
										class="ion-android-star b1"></a> <a
										href="rate-answer?user_id=${user.getId()}&answer_id=${ans.getId()}&rating=4"
										class="ion-android-star b2"></a> <a
										href="rate-answer?user_id=${user.getId()}&answer_id=${ans.getId()}&rating=3"
										class="ion-android-star b3"></a> <a
										href="rate-answer?user_id=${user.getId()}&answer_id=${ans.getId()}&rating=2"
										class="ion-android-star b4"></a> <a
										href="rate-answer?user_id=${user.getId()}&answer_id=${ans.getId()}&rating=1"
										class="ion-android-star b5"></a>

									<style>
@import
	"http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css";

.box {
	position: relative;
	/* top: 50%;
    left: 50%; */
	/* transform: translate(-50%,-50%); */
	direction: rtl;
}

.box a {
	font-size: 40px;
	color: #313131;
	transition: 0.3s all;
}

.box a:hover {
	color: #f1c40f;
}

.b1:hover ~ a {
	color: #f1c40f;
}

.b2:hover ~ a {
	color: #f1c40f;
}

.b3:hover ~ a {
	color: #f1c40f;
}

.b4:hover ~ a {
	color: #f1c40f;
}

.b5:hover ~ a {
	color: #f1c40f;
}
</style>



									</script>






								</div>
							</div>
						</c:if>
					</c:forEach>



					<script>
				function myFunction(dots,moreText,btnText) {
					

					if (dots.style.display === "none") {
						dots.style.display = "inline";
						btnText.innerHTML = "Read more";
						moreText.style.display = "none";
					} else {
						dots.style.display = "none";
						btnText.innerHTML = "Read less";
						moreText.style.display = "inline";
					}
				}
			</script>



				</c:forEach>

				<c:forEach items="${queries }" var="query">



					<!-- Answer Modal begin -->
					<div id="myModal${query.getId() }" class="modal fade" role="dialog">
						<div class="modal-dialog">

							<!-- Modal content-->
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal">&times;</button>
									<h4 class="modal-title">Question - ${query.getQuery() }</h4>
								</div>

								<div class="modal-body">

									<form
										action="addAnswer?user_id=${user.getId()}&question_id=${query.getId() }&type=${type}"
										method="post">

										<div class="form-group">

											<textarea name="answerField" rows="10" class="form-control"
												id="ans"></textarea>
											<!--           <input type="textarea" rows="5" col="5" class="form-control" id="ans">
 -->
										</div>

										<input type="submit" class="btn btn-danger" value="submit">
									</form>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default"
										data-dismiss="modal">Close</button>
								</div>
							</div>

						</div>
					</div>


					<!-- ################################# -->

					<!-- Modal -->
					<div id="answer${query.getId() }" class="modal fade" role="dialog">
						<div class="modal-dialog">

							<!-- Modal content-->
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal">&times;</button>
									<h4 class="modal-title">Question</h4>
								</div>
								<div class="modal-body pre-scrollable">
									<div class="form-group">
										<!-- <textarea name="" rows="10" class="form-control" id="ans"></textarea>
					     <input type="textarea" rows="5" col="5" class="form-control" id="ans"> -->



										<h3 class="panel-heading card-danger card-title">
											${query.getId()} - ${query.getQuery()}</h3>

										<c:forEach items="${query.getAnswers() }" var="ans">

											Rated <strong>${answerDB.getAnswerByAnswerId(ans.getId()).getAvg_rating()  }</strong>
											<p class="card-text panel-body">
												${ans.getAnswer()}<span id="dots5${ans.getId()}">...</span>

												<span id="more5${ans.getId()}"> ${ans.getAnswer()}</span>
											</p>
											<div>
												<a
													onclick="myFunction(dots5${ans.getId()}, more5${ans.getId()}, myBtn5${ans.getId()})"
													id="myBtn5${ans.getId()}"
													class="btn  float-right panel-footer"
													style="background-color: transparent;">Read more <span
													class="glyphicon glyphicon-forward"></a>


												&nbsp;&nbsp;&nbsp; Rate answer:
												<div class="box">
													<a
														href="rate-answer?user_id=${user.getId()}&answer_id=${ans.getId()}&rating=5"
														class="ion-android-star b1"></a> <a
														href="rate-answer?user_id=${user.getId()}&answer_id=${ans.getId()}&rating=4"
														class="ion-android-star b2"></a> <a
														href="rate-answer?user_id=${user.getId()}&answer_id=${ans.getId()}&rating=3"
														" class="ion-android-star b3"></a> <a
														href="rate-answer?user_id=${user.getId()}&answer_id=${ans.getId()}&rating=2"
														class="ion-android-star b4"></a> <a
														href="rate-answer?user_id=${user.getId()}&answer_id=${ans.getId()}&rating=1"
														class="ion-android-star b5"></a>
													<style>
@import
	"http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css";

.box {
	position: relative;
	/* top: 50%;
    left: 50%; */
	/* transform: translate(-50%,-50%); */
	direction: rtl;
}

.box a {
	font-size: 40px;
	color: #313131;
	transition: 0.3s all;
}

.box a:hover {
	color: #f1c40f;
}

.b1:hover ~ a {
	color: #f1c40f;
}

.b2:hover ~ a {
	color: #f1c40f;
}

.b3:hover ~ a {
	color: #f1c40f;
}

.b4:hover ~ a {
	color: #f1c40f;
}

.b5:hover ~ a {
	color: #f1c40f;
}
</style>


												</div>
												<!-- <a data-toggle="modal" data-target="#answer">Total Answer<span class="badge">12</span>
								</a> -->

											</div>

										</c:forEach>

									</div>

									<!-- <button type="submit" class="btn btn-danger">Submit</button> -->
								</div>

							</div>

							<div class="modal-footer">
								<button type="button" class="btn btn-danger"
									data-dismiss="modal">Close</button>
							</div>

						</div>
					</div>
					<!-- end -->
				</c:forEach>


			</div>

		</div>




		<!-- ###################################################################################################### -->

		<div class="col-md-3 ">
			<br> <br>
			<h4>Recommended Questions</h4>
			<hr>
			<c:set var="counter" value="0"></c:set>
			<c:forEach items="${recentQueries}" var="query">
				<c:set var="counter" value="${counter+1}"></c:set>
				<c:if test="${counter <= 10 }">


					<span>${query.getQuery()}</span>
					<span class="badge">${query.getId()}</span>
					<a data-toggle="modal" data-target="#myModal${query.getId() }"
						class="btn  float-left" style="background-color: transparent;"><span
						class="glyphicon glyphicon-pencil" style="color: #FF0000;"></span>
					</a>

					<a data-toggle="modal" data-target="#answer${query.getId() }"><span
						class="glyphicon glyphicon-eye-open" style="color: #469150;"></span>
					</a>

					<br>


				</c:if>


			</c:forEach>



		</div>
	</div>
	<hr>

	<!-- ########################## -->


	<!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">Open Registration Form</button>
 -->

	<!-- ################################# -->



	<!-- ###################################### -->



</body>
</html>