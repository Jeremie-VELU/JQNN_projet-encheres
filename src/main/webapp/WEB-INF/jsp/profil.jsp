<%@page import="fr.eni.projet.bo.Utilisateur"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> --%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style type="text/css">
    @import url("https://fonts.googleapis.com/css?family=Roboto:400,400i,700");
    
    html, body {
        background: rgb(42, 33, 204);
        background: linear-gradient(90deg, rgba(42, 33, 204, 1) 0%, rgba(141, 0, 196, 1) 35%,
                                                rgba(0, 212, 255, 1) 100%);
        font-family: Roboto, sans-serif;
    }
    
    .main {
        width: 100%;
        margin: 0px auto;
        display: table;
        height: 100vh;
    }
    
    .wrapper {
        display: table-cell;
        height: 100%;
        vertical-align: middle;
        padding-top: 40px;
    }
    
    .content {
        overflow: hidden;
        max-width: 355px;
        width: 100%;
        background: rgba(255, 255, 255, 0.15);
        box-shadow: 0 8px 32px 0 rgb(0 0 135/ 37%);
        /* 
      
    In Firefox Backdrop-filter is disabled by default. In order to see the blur effect, you should enable going to your browser settings
    
      https://caniuse.com/css-backdrop-filter 
      
      */
        backdrop-filter: blur(18px);
        -webkit-backdrop-filter: blur(18px);
        border: 1px solid rgba(255, 255, 255, 0.08);
        border-radius: 15px;
        padding: 20px;
        color: whitesmoke;
        animation: zoom 0.5s ease-in;
        text-align: center;
        margin: 0px auto;
        animation: 1s fadeInDown;
    }
    
    span.psw {
        float: right;
        margin-top: 20px;
        cursor: pointer;
    }
    
    span.create {
        float: left;
        margin-top: 20px;
        cursor: pointer;
    }
    
    input[type="text"], input[type="password"] {
        width: 80%;
        padding: 12px 20px;
        margin: 8px 0;
        display: block;
        box-sizing: border-box;
        border-radius: 15px;
        margin: 10px auto;
        background: rgba(255, 255, 255, 0.15);
        color: white;
        border: none;
    }
    
    ::placeholder {
        /* Chrome, Firefox, Opera, Safari 10.1+ */
        color: rgb(255, 255, 255, 0.5);
        opacity: 1; /* Firefox */
    }
    
    :-ms-input-placeholder {
        /* Internet Explorer 10-11 */
        color: rgb(255, 255, 255, 0.5);
    }
    
    ::-ms-input-placeholder {
        /* Microsoft Edge */
        color: rgb(255, 255, 255, 0.5);
    }
    
    .buttons {
    padding-left: 8px;
    padding-top: 3px;
    float: left;
    line-height: 0px;
    }
    
    .close {
    background: #ff5c5c;
    font-size: 9pt;
    width: 11px;
    height: 11px;
    border: 1px solid #e33e41;
    border-radius: 50%;
    display: inline-block;
    }
    
    .close:active {
    border: 1px solid rgb(0, 0, 0, 0.5);
    }
    
    .minimize {
                                            background: #ffbd4c;
                                            font-size: 9pt;
                                            line-height: 11px;
                                            margin-left: 4px;
                                            width: 11px;
                                            height: 11px;
                                            border: 1px solid #e09e3e;
                                            border-radius: 50%;
                                            display: inline-block;
    }
    
    .minimize:active {
                                            border: 1px solid rgb(0, 0, 0, 0.5);
    }
    
    .zoom {
                                            background: #00ca56;
                                            font-size: 9pt;
                                            line-height: 11px;
                                            margin-left: 6px;
                                            width: 11px;
                                            height: 11px;
                                            border: 1px solid #14ae46;
                                            border-radius: 50%;
                                            display: inline-block;
    }
    
    .zoom:active {
                                            border: 1px solid rgb(0, 0, 0, 0.5);
    }
    
    button {
                                            -webkit-border-radius: 5px;
                                            -moz-border-radius: 5px;
                                            border-radius: 5px;
                                            text-shadow: 1px 1px 0px #211d21;
                                            color: #ffffff;
                                            font-size: 13px;
                                            background: rgba(255, 255, 255, 0.15);
                                            padding: 8px 30px;
                                            text-decoration: none;
                                            border: none;
                                            transition: 0.5s ease-in;
                                            margin: 20px;
                                            cursor: pointer;
                                            font-weight: bold;
                                           
    }
    
    button:hover {
                                            background: rgba(250, 250, 250, 0.3);
                                            
    }
    
    /* Change styles for span on extra small screens */
    @media screen and (max-width: 300px) {
                                            span.psw {
                                                                                    float: none;
                                            }
    }
    
    @
    keyframes fadeInDown { 0% {
                                            opacity: 0;
                                            -webkit-transform: translate3d(0, -100%, 0);
                                            transform: translate3d(0, -100%, 0);
    }
    100
    %
    {
    opacity
    :
    1;
    -webkit-transform
    :
    none;
    transform
    :
    none;
    }
    }
    </style>
<title>Profil</title>
</head>
<body>
<% if (request.getAttribute("utilisateur") == null){ %>
		<%@include file="headerInvite.jsp"%>
	<%} else {%>
		<%@include file="headerConnecter.jsp"%>
	<%} %>
	<section>
        <div class="profil " style="text-align: center;">
            
            	<%Utilisateur utilisateur = (Utilisateur) request.getAttribute("utilisateur"); %>

                    <p>Pseudo :   ${utilisateur.pseudo} </p>
                    <p>nom    :    ${utilisateur.nom}</p>
                    <p>prenom :   ${utilisateur.prenom }</p>
                    <p>email  :   ${utilisateur.email }</p>
                    <p>telephone: ${utilisateur.telephone }</p>
                    <p>rue  :     ${utilisateur.rue} </p>
                    <p>codePostal:${utilisateur.codePostal}</p>
                    <p>ville  :   ${utilisateur.ville }</p>
                            
            <% if (request.getAttribute("ok") != null){
           		boolean ok = (boolean) request.getAttribute("ok");
            	if(ok){%>
            	<a href="<%=request.getContextPath()%>/modifierProfil">
            <button type="submit" value="modifier" name="modifier" style="text-align: center;" >Modifier</button>					
            	</a>
			<%}
            	}%>	
        </div>
    </section>

 
</body>
</html>