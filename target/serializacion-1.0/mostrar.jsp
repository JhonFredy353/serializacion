

<%@page import="java.util.List"%>
<%@page import="com.umariana.mundo.Video"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>ver</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<link rel="stylesheet" href="style.css">
<style>
    body {
      height: 100vh;
      background-color: #ff4d4d;
      overflow-x: scroll;
    }

    .wave,
    .wave::before,
    .wave::after {
      content: '';
      position: absolute;
      top: 50%;
      left: 50%;
      width: 250vw;
      height: 250vw;
      margin-left: -125vw;
      transform-origin: 50% 50%;
      background-color: transparent;
      border-radius: 38% 42%;
      box-shadow: inset 0 0 10vw rgba(255,0,255,0.8);
      animation: spin 16s infinite linear;
      mix-blend-mode: multiply;
    }

    .wave::before {
      width: 105%;
      height: 95%;
      margin-top: -125vw;
      transform-origin: 49% 51%;
      border-radius: 40% 38%;
      box-shadow: inset 0 0 10vw rgba(255,255,0,0.8);
      animation: spin 13s infinite linear;
    }

    .wave::after {
      width: 102%;
      height: 98%;
      margin-top: -125vw;
      transform-origin: 51% 49%;
      border-radius: 48% 42%;
      box-shadow: inset 0 0 10vw rgba(0,255,255,0.8);
      animation: spin 10s infinite linear;
    }

    @keyframes spin {
      100% { transform: rotate(360deg); }
    }

    .btn-primary {
      background-color: #ff4d4d;
      color: white;
      border-radius: 10px;
      padding: 10px 20px;
      font-size: 1.2rem;
    }
  </style>
</head>
<body >
     
        <div class="container">
                <div class="container-fluid">
                    <a class="navbar-brand" href="index.jsp" >
                        <h1> Music</h1>
                    </a>
                    <a class="navbar-brand" href="agregarvideo.jsp">
                        <h1> Agregar video</h1> 
                    </a>
                </div>
                
                
            </div>
    <section class="container">
        <h2 class="titulo-2">Lista de videos</h2>

        <%
        // Obtener los datos de la solicitud
        List<Video> videos = (List<Video>) request.getAttribute("videos");

        if (videos == null) {
            // Mostrar un mensaje de error al usuario
            request.setAttribute("error", "La lista de videos está vacía.");
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
        %>

        <% for (Video video : videos) { %>
        <div >
            <di  >
                <%= video.getUrl()%>
            </di>
            <br>
            <div >
                <h5 ><%= video.getTitulo() %></h5>
                <p  ><strong>Autor: </strong><%= video.getAutor()%><br></p> 
                <p > <strong>Año: </strong>  <%= video.getAniho() %></p> 
                <p ><strong>Categoria: </strong><%= video.getCategoria() %></p>
            </div> 





        </div>
        <% } %>

        <section class="posicion">

            <div class="container2">
                <section>
                    <div class= "music-loader">
                        <div class="line line1"></div>
                        <div class="line line2"></div>
                        <div class="line line3"></div>
                    </div>
                </section>
            </div>
        </section>
  
    </section>


<div class="wave"></div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<script src="Script.js"></script>
</body>
</html>
