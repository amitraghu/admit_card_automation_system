<%-- 
    Document   : header
    Created on : Feb 21, 2018, 10:11:05 PM
    Author     : Deepti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
                        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-theme.min.css">
        <style>
             body{ 
                 background:url("7.jpg");
                 background-size: cover; 
             }
    .dropdown {
    position: relative;
    display: inline-block;
}
.dropdown-content1 {
    display: none;
    position: absolute;
    background-color: #202222;
    min-width: 200px;
    z-index: 1;
}
.dropdown-content1 a1 {
    color: #cee8d8;
    font-size: 1.25em;
   padding: 0px 0px;
    text-decoration: none;
    display: block;
}
.dropdown:hover .dropdown-content1 {
    display: block;
}
body.landing #header {
		background-color: transparent;
		left: 0;
		position: absolute;
		top: 0;
	}

	#header {
		background-color: #202222;
		color: #ffffff;
		cursor: default;
		height: 7em;
		line-height: 6em;
		width: 100%;
                margin: 0;
		/*z-index: 10000;*/
	}

		#header h1 {
			color: #ffffff;
			height: inherit;
			left: 1em;
			line-height: inherit;
			margin: 0;
			padding: 0;
			position: absolute;
			top: 0;
		}

			#header h1 a {
				font-size: 1.25em;
			}

		#header nav {
			height: inherit;
			line-height: inherit;
			position: absolute;
			right: 1.75em;
			top: 0;
			vertical-align: middle;
		}

			#header nav > ul {
				list-style: none;
				margin: 0;
				padding-left: 0;
			}

				#header nav > ul > li {
					border-radius: 4px;
					display: inline-block;
					margin-left: 1.5em;
					padding-left: 0;
				}

					#header nav > ul > li a2 {
						-moz-transition: color 0.2s ease-in-out;
						-webkit-transition: color 0.2s ease-in-out;
						-o-transition: color 0.2s ease-in-out;
						-ms-transition: color 0.2s ease-in-out;
						transition: color 0.2s ease-in-out;
						color: #cee8d8;
						display: inline-block;
						text-decoration: none;
                                                font-size: 1.5em;
					}

						#header nav > ul > li a:hover {
							color: #ffffff;
						}

					#header nav > ul > li:first-child {
						margin-left: 0;
					}

					#header nav > ul > li .button {
						height: 2.25em;
						line-height: 2.25em;
						margin-bottom: 0;
						padding: 0 1em;
						position: relative;
						top: -0.075em;
						vertical-align: middle;
					}

		#header .container {
			position: relative;
		}

			#header .container h1 {
				left: 0;
			}

			#header .container nav {
				right: 0;
			}

    </style>
    </head>
    <body>
       <header id="header">
				<h1><img src="blogo.gif" alt="banasthali"/></h1>
				<nav id="nav">
					<ul>
                                            <li><a href="index.html"><a2>Home</a2></a></li>
                                            <li class="dropdown">
                                                    <a><a2>Sign In<span class="caret"></span></a2></a>
                                                        <div class="dropdown-content1">
                                                        <a href="sign_in.jsp"><a1>&nbsp;As Student</a1></a>
                                                        <a href="vsign_in.jsp"><a1>&nbsp;As Verification Officer</a1></a>
                                                        <a href="asign_in.jsp"><a1>&nbsp;As Admin</a1></a>
                                                        </div>
                                                    </li>
                                                <li><a href="faqs.jsp"><a2>FAQs</a2></a></li>
					</ul>
				</nav>
			</header>

    </body>
</html>
