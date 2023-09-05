<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Inicio</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
  <style>
    body {
      height: 100vh;
      background-color: #ff4d4d;
      overflow: hidden;
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
  <h1>Sistema de reproducción</h1>
  <br>

  <a href="agregarvideo.jsp" class="btn btn-primary">Agregar música</a>
  <a href="SvVideo" class="btn btn-primary">Ver videos agregados</a>

</div>

<div class="wave"></div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

</body>
</html>

