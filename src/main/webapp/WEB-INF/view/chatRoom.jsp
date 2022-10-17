<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<html>

<head>
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
   	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
    
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
   <!--  <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.bundle.min.js"></script> -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    
    
    
    	
    <style>
    	body {
		    background-color: rgb(235, 235, 235);
		    background-image: linear-gradient(90deg, rgb(245, 245, 245) 0%, rgb(235, 235, 235) 100%);
		    min-height: 100vh;
		}
		
		 ::-webkit-scrollbar {
		    width: 5px;
		}
		
		 ::-webkit-scrollbar-track {
		    width: 5px;
		    background: #f5f5f5;
		}
		
		 ::-webkit-scrollbar-thumb {
		    width: 1em;
		    background-color: #ddd;
		    outline: 1px solid slategrey;
		    border-radius: 1rem;
		}
		
		.text-small {
		    font-size: 0.9rem;
		}
		
		.messages-box,
		.chat-box {
		    height: 510px;
		    overflow-y: scroll;
		}
		
		.rounded-lg {
		    border-radius: 0.5rem;
		}
		
		input::placeholder {
		    font-size: 0.9rem;
		    color: #999;
		}
		
    </style>
</head>

<body>
<%@ include file="/WEB-INF/view/navbar.jsp" %>
    <div class="container py-5 px-4">
        <!-- For demo purpose-->
        <div class="row rounded-lg overflow-hidden shadow">
            <!-- Users box-->
            <div class="col-5 px-0">
                <div class="bg-white">

                    <div class="bg-gray px-4 py-2 bg-light">
                        <p class="h5 mb-0 py-1">Recent</p>
                    </div>

                    <div class="messages-box">
                        <div class="list-group rounded-0">
                        	<c:forEach var="chat" items="${ sessionScope.Chats }">
                        		<c:if test="${ chat.get(3) != sessionScope.SESSION_USER.getUser_code() }">
                        			<c:set var="user_id" value="${ chat.get(3) }"/>
                        			<c:set var="user_name" value="${ chat.get(4) }"/>
                        		</c:if>
                        		
                        		<c:if test="${ chat.get(1) != sessionScope.SESSION_USER.getUser_code() }">
                        			<c:set var="user_id" value="${ chat.get(1) }"/>
                        			<c:set var="user_name" value="${ chat.get(2) }"/>
                        		</c:if>
                        		
                        		<a href="ChatRoom?user_id=${ user_id }" class="list-group-item list-group-item-action ${ user_id == sessionScope.user_id ? "active text-white": "list-group-item-light" }  rounded-0" style="${ user_id == sessionScope.user_id ? "border-color:#40d1f2;background-color:#40d1f2;":""}">
	                                <div class="media"><img src="https://ui-avatars.com/api/?name=${user_name}&background=${ user_id == sessionScope.user_id ? "fff&color=40d1f2" :  "40d1f2&color=fff" }" alt="user" width="50" class="rounded-circle">
	                                    <div class="media-body ml-4">
	                                        <div class="d-flex align-items-center justify-content-between mb-1">
	                                            <h6 class="mb-0">${ user_name }</h6><small class="small font-weight-bold"></small>
	                                        </div>
	                                        <p class="font-italic ${ user_id == sessionScope.user_id ? "" : "text-muted"} mb-0 text-small">${ chat.get(5) }</p>
	                                    </div>
	                                </div>
                           		 </a>
                        	</c:forEach>
                            




                        </div>
                    </div>
                </div>
            </div>
            <!-- Chat Box-->
            <div class="col-7 px-0">
            	
            	<div style="background-color:white ; border-bottom: 1px solid grey;" class=" shadow-sm pt-2 pb-2 pl-4 media">
                    <img src="https://ui-avatars.com/api/?name=${sessionScope.to_contact_user_name}&background=b5b5b5&color=fff" alt="user" width="50" class="rounded-circle">
                    <div class="media-body ml-4">
                        <div class="d-flex align-items-center justify-content-between mb-1">
                            <h6 class="mt-3">${ sessionScope.to_contact_user_name }</h6>
                        </div>
                    </div>
                </div>
            		
                <div class="px-4 py-5 chat-box bg-white">
                	
                	<c:forEach var="message" items="${sessionScope.messages }">
                		
                		<c:if test="${ message.get(2) == sessionScope.SESSION_USER.getUser_code() }">
                			<div class="media w-50 ml-auto mb-3">
		                        <div class="media-body">
		                            <div class=" rounded py-2 px-3 mb-2" style="background-color:#40d1f2">
		                                <p class="text-small mb-0 text-white" style="background-color:#40d1f2">${message.get(5) }</p>
		                            </div>
		                            <p class="small text-muted">${ message.get(6)}</p>
		                        </div>
                   			</div>
                		</c:if>
                		
                		<c:if test="${ message.get(1) == sessionScope.SESSION_USER.getUser_code() }">
                			<div class="media w-50 mb-3"><img src="https://ui-avatars.com/api/?name=${message.get(3)}&background=b5b5b5&color=fff" alt="user" width="50" class="rounded-circle">
		                        <div class="media-body ml-3">
		                            <div class="bg-light rounded py-2 px-3 mb-2">
		                                <p class="text-small mb-0 text-muted">${message.get(5) }</p>
		                            </div>
		                            <p class="small text-muted">${ message.get(6) }</p>
		                        </div>
		                    </div>
                		</c:if>             		
                	</c:forEach>
                    

                </div>

                <!-- Typing area -->
                <form action="ChatRoom" method="post" class="bg-light">
                    <div class="input-group">
                    	<input type="hidden" value="${ sessionScope.user_id }" name="user_id">
                        <input type="text" name="message" placeholder="Type a message" aria-describedby="button-addon2" class="form-control rounded-0 border-0 py-4 bg-light">
                        <div class="input-group-append">
                            <button id="button-addon2" type="submit" class="btn btn-link"> <i style="color:#40d1f2;" class="fa fa-paper-plane"></i></button>
                        </div>
                    </div>
                </form>

            </div>
        </div>
    </div>
</body>

</html>