<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Almacen</title>

    <!-- Bootstrap Core CSS -->
    <link href="http://localhost:8000/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
     <link href="http://localhost:8000/css/business-frontpage.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="http://localhost:8000/">Almacen</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="http://localhost:8000/registrar">Registrar producto</a>
                    </li>
                    <li>
                        <a href="http://localhost:8000/salida">Consulta</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Image Background Page Header -->
    <!-- Note: The background image is set within the business-casual.css file. -->
    <header class="business-header">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="tagline">H1</h1>
                </div>
            </div>
        </div>
    </header>


        <!-- /.row -->

        <hr>

        <div class="row">
            <div class="col-sm-12">
                <!--AQUI VA LA LISTA DE PRODUCTOS-->
                <h4>Lista de productos</h4>
              <form>
                <label>Folio</label>
                <label>Usuario</label>
                <label>Fecha</label>
                <label>Productos</label>
                <input type = "number" value = "0" min = "0">
                 <input type = "submit" value = "Dar salida">
              </form>  
                               
            </div>
         </div>
        <!-- /.row -->

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy;  Proyecto ingeniería web 2015</p>
                </div>
            </div>
            <!-- /.row -->
        </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="http://localhost:8000/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="http://localhost:8000/js/bootstrap.min.js"></script>

</body>

</html>