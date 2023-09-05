
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Agregar video</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
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
    <body>
        
        <div class="container">
                <div class="container-fluid">
                    <a class="navbar-brand" href="index.jsp" >
                        <h1> Music</h1>
                    </a>
                    <a class="navbar-brand" href="index.jsp">
                        <h1>inicio</h1>
                    </a>
                </div>
                
            </div>   
        
        <section class="container bajar">
            <h1>sistema de reproduccion</h1>
            <form action="SvVideo" method="POST">
                <label for="idVideo">idVideo: </label>
                <input class="form-control" type="text" name="idVideo"><br>

                <label for="titulo">Titulo: </label>
                <input class="form-control" type="text" name="titulo"><br>

                <label for="autor">Autor: </label>
                <input class="form-control" type="text" name="autor"><br>

                <label for="aniho">Año: </label>
                <input class="form-control" type="text" name="aniho"><br>
     
                <label for="categoria">Seleccion categoria del video</label>
                <select class="form-select" type="text" name="categoria">
                    <option value="Country">Country</option>
                    <option value="pop">Pop</option>
                    <option value="Rock">Rock</option>
                    <option value="Hip hop">Hip hop</option>
                    <option value="Blues">Blues</option>
                    <option value="Opera">Opera</option>
                    <option value="Electronica">Electronica</option>
                    <option value="Jazz">Jazz</option>
                </select> <br>

                <label for="url">url</label>
                <input class="form-control" type="text" name="url"><br>
                <label for="Letra">Letra</label>
                <textarea class="form-control" id="id" name="letra" rows="5" cols="10"></textarea><br>
                <input class='btn btn-primary' type="submit" value="Agregar Video">
            </form>
            
    </section>
    
    
<div class="wave"></div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
  

    </body>
</html>
