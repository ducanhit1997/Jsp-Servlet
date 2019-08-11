<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <meta charset="utf-8" />
        <title></title>
        <link href="css/layout.css" rel="stylesheet" type="text/css" />
        <link href="css/menu.css" rel="stylesheet" type="text/css" />
   <style type="text/css">
     #nav,#nav ul {
    list-style: none outside none;
  
}
#nav {
     font-family: "Lucida Sans Unicode",Verdana,Arial,sans-serif;
    font-size: 16px;
    width: 100%;
	 top: 0px;
    left:0px;;
    
	 position: fixed;
	 z-index:100000;
    /* border radius */

    /* box shadow */
    -moz-box-shadow: 0px 00x 0px cece;
    -webkit-box-shadow: 0px 0 #ce

    background-image: -webkit-gradient(linear, left bottom, left top, color-stop(0, #ffffff), color-stop(0.5, #ffffff), color-stop(0.51, #ffffff), color-stop(1, #ffffff));
    background-image: -moz-linear-gradient(center bottom, #ffffff 0%, #ffffff 50%, #ffffff 51%, #ffffff 100%);
    background-color: #ffffff; 
   
}
#nav li {
   
    display: block;
    float: left;
    height: 34px;
    position: relative;
    width: 155px;
}
#nav > li:first-child {
    border-left: 0 none;
    margin-left: 200px;
}
#nav ul {
    left: 700px;
    position: absolute;
    top: 0px;;
    z-index: 2;
}
#nav ul li {
    background: none repeat scroll 0 0 #ffffff;
    box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.5);
    width: 100%;
}
#nav li a {
    color: #428BFF;
    display: block;
    line-height: 34px;
    outline: medium none;
    text-align: center;
    text-decoration: none;

    /* gradient */
    background-image: -webkit-gradient(linear, left bottom, left top, color-stop(0, #ffffff), color-stop(0.5, #ffffff), color-stop(0.51, #ffffff), color-stop(1, #ffffff));
    background-image: -moz-linear-gradient(center bottom, #ffffff 0%, #ffffff 50%, #ffffff 51%, #ffffff 100%);
}

/* keyframes #animation */
@-webkit-keyframes animation {
    0% {
        -webkit-transform: scale(1);
    }
    30% {
        -webkit-transform: scale(1.2);
    }
    100% {
        -webkit-transform: scale(1.1);
    }
}
@-moz-keyframes animation {
    0% {
        -moz-transform: scale(1);
    }
    30% {
        -moz-transform: scale(1.2);
    }
    100% {
        -moz-transform: scale(1.1);
    }
}
#nav li > a:hover {
    /* CSS3 animation */
    -webkit-animation-name: animation;
    -webkit-animation-duration: 0.3s;
    -webkit-animation-timing-function: linear;
    -webkit-animation-iteration-count: 1;
    -webkit-animation-direction: normal;
    -webkit-animation-delay: 0;
    -webkit-animation-play-state: running;
    -webkit-animation-fill-mode: forwards;

    -moz-animation-name: animation;
    -moz-animation-duration: 0.3s;
    -moz-animation-timing-function: linear;
    -moz-animation-iteration-count: 1;
    -moz-animation-direction: normal;
    -moz-animation-delay: 0;
    -moz-animation-play-state: running;
    -moz-animation-fill-mode: forwards;
}
#nav li:hover ul {
    left: 0;
    top: 0px;;
    width: 150px;
}
   </style>
   
</head>
<body>
 <ul id="nav">
            <li><a href="<%=application.getContextPath()%>/index.jsp">Home</a>
                
            </li>
            <li><a href="<%=application.getContextPath()%>/About/about.jsp">About</a>
                
            </li>
                        <li><a href="<%=application.getContextPath()%>/Project/gioithieuproject.jsp">Project</a></li>
            
            <li><a href="<%=application.getContextPath()%>/Groupdiary/groupdiary.jsp">Group diary</a></li>
            <li><a href="<%=application.getContextPath()%>/Result/result.jsp">Result</a></li>
        </ul>
        <script src="js/script.js"></script>
</body>
</html>