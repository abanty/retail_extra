<?php
if (strlen(session_id()) < 1)
  session_start();
?>
<!DOCTYPE html>

<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Seguridad | Retail</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Icono de la pestaña -->
  <link rel="shortcut icon" type="text/css" href="../public/img/favicon.ico">
  <!-- Bootstrap library -->
  <link rel="stylesheet" type="text/css" href="../public/css/bootstrap.min.css">
  <!-- Libreria Select box bootstrap -->
  <link rel="stylesheet" type="text/css" href="../public/css/bootstrap-select.min.css">
  <!-- Libreria I Check -->
  <link rel="stylesheet" type="text/css" href="../public/css/all.css">
  <!-- Bootstrap library extra -->
  <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
  <!-- Libreria Datatable de bootstrap 3 -->
  <link rel="stylesheet" type="text/css" href="../public/css/dataTables.bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" type="text/css" href="../public/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" type="text/css" href="../public/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" type="text/css" href="../public/css/AdminLTE.css">
  <!-- Theme style -->
  <link rel="stylesheet" type="text/css" href="../public/css/skin-blue.min.css">
  <!-- Estilos personalizados -->
  <link rel="stylesheet" type="text/css" href="../public/css/estilos_forzados.css">
  <!-- Estilos del loader -->
  <link rel="stylesheet" type="text/css" href="../public/css/loader.css">
  <!-- Carview css-->
  <link rel="stylesheet" type="text/css" href="../public/css/cardview.css"/>
  <!-- Liberia de alertas jquery -->
  <link rel="stylesheet" type="text/css" href="../public/css/jquery-confirm.min.css">
  <!-- Botones de la libreria de datatables -->
  <link rel="stylesheet" type="text/css" href="../public/css/buttons.bootstrap.min.css"/>
  <!-- Amaran js -->
  <link rel="stylesheet" type="text/css" href="../public/css/amaran.min.css">
  <!-- Color Picker -->
  <link rel="stylesheet" type="text/css" href="../public/bootstrap-colorpicker/dist/css/bootstrap-colorpicker.css"/>
  <!-- Bootstrap Slide -->
  <link rel="stylesheet" type="text/css" href="../public/css/slider.css"/>
  <!-- CDN animated -->
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css"/>  
  <!-- Swipper Slider -->
  <link rel="stylesheet" type="text/css" href="../public/css/swiper.min.css">
  <!-- Extra estilos para checkbox y radiobutton -->
  <link rel="stylesheet" type="text/css" href="../public/css/extra_estilos.css">
  <!-- API o libreria para editores textareas -->
  <script src="../public/ckeditor/ckeditor.js"></script>
  
  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
  <link href="https://fonts.googleapis.com/css?family=Courgette&display=swap" rel="stylesheet">
  	<!-- FUENTES DE GOOGLES SUPER CHIDAS -->
	<link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Ubuntu|Ubuntu+Condensed" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Cairo&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Cuprum&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Lato:wght@400;500&display=swap" rel="stylesheet">



   <!-- REQUIRED JS SCRIPTS -->
<!-- jQuery 3 -->
<script src="../public/js/jquery.min.js"></script>
<script src="../public/js/jquery-ui.min.js"></script>

<script>
$(function(){

var url = window.location;
// for sidebar menu but not for treeview submenu
$('ul.sidebar-menu a').filter(function() {
    return this.href == url;
}).parent().siblings().removeClass('active').end().addClass('active');
// for treeview which is like a submenu
$('ul.treeview-menu a').filter(function() {
    return this.href == url;
}).parentsUntil(".sidebar-menu > .treeview-menu").siblings().removeClass('active menu-open').end().addClass('active menu-open');

});

</script>

<script type="text/javascript" src="../public/js/datatables/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="../public/js/datatables/dataTables.bootstrap.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script type="text/javascript" src="../public/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script type="text/javascript" src="../public/js/adminlte.js"></script>
<!-- Color Picker -->
<!-- <script src="//unpkg.com/bootstrap@4.3.1/dist/js/bootstrap.bundle.min.js"></script> -->
<script type="text/javascript" src="../public/bootstrap-colorpicker/dist/js/bootstrap-colorpicker.js"></script>
<!-- Bootstrap slider -->
<script type="text/javascript" src="../public/js/bootstrap-slider.js"></script>
<!-- Bootstrap Select BOX -->
<script type="text/javascript" src="../public/js/bootstrap-select.min.js"></script>
<!-- CHECKBOX BOOTSTRAP -->
<script type="text/javascript" src="../public/js/bootstrap-checkbox.js"></script>
<!-- iCheck 1.0.1 -->
<script type="text/javascript" src="../public/js/icheck.min.js"></script>
<!-- Notify -->
<script type="text/javascript" src="../public/js/notify.min.js"></script>
<!-- Confirm js -->
<script type="text/javascript" src="../public/js/jquery-confirm.min.js"></script>
<!-- Amaran js -->
<script type="text/javascript" src="../public/js/jquery.amaran.min.js"></script>
<script type="text/javascript" src="../public/js/swiper.min.js"></script>
<script type="text/javascript" src="../public/js/jquery.inputmask.bundle.js"></script>


<script type="text/javascript" src="../public/js/datatables/jszip.min.js"></script>
<script type="text/javascript" src="../public/js/datatables/pdfmake.min.js"></script>
<script type="text/javascript" src="../public/js/datatables/vfs_fonts.js"></script>
<script type="text/javascript" src="../public/js/datatables/dataTables.buttons.min.js"></script>
<script type="text/javascript" src="../public/js/datatables/buttons.bootstrap.min.js"></script>
<script type="text/javascript" src="../public/js/datatables/buttons.colVis.min.js"></script>
<script type="text/javascript" src="../public/js/datatables/buttons.flash.min.js"></script>
<script type="text/javascript" src="../public/js/datatables/buttons.html5.min.js"></script>
<script type="text/javascript" src="../public/js/datatables/buttons.print.min.js"></script>



<script>   
         $(document).ready(function(){
            var trigger = $('ul.sidebar-menu li a.sincron'),
            container = $('#contenido');

            trigger.on('click', function(){

               var $this = $(this);
               target = $this.data('target'),
               container.load(target + '.php');

              //  alert(target);

          
               if (target == "categoria") {        

                  $.getScript("scripts/categoria.js");
                  
               }else if(target == "sub_categoria"){
              
                  $.getScript("scripts/sub_categoria.js");

               }else if(target == "producto"){   

                $.getScript("scripts/editor.js");
                  $.getScript("scripts/producto.js");
                

               }else if(target == "accesorio"){ 

                $.getScript("scripts/editor.js");
                  $.getScript("scripts/accesorio.js");
                  
                
               }else if(target == "usuario"){      

                  $.getScript("scripts/usuario.js");   
                                 
               }else if(target == "configuracion_generales"){
                  // $.getScript("../public/js/jquery.inputmask.bundle.js"); 
                  $.getScript("scripts/conf_generales.js");   

               }else if(target == "gestor_slider"){
                                 
                  $.getScript("scripts/gestor_slider.js");   

               }else if(target == "dashboard"){
                                 
                  $.getScript("scripts/dashboard.js");   
               
                 }
            
               
               return false;
            });
         });        
        
         
         
   </script>

</head>

<!-- <div class="loader-page"><h1 class="parpadea">Seguridad RETAIL</h1></div> -->

<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <!-- Main Header -->
  <header class="main-header">

    <!-- Logo -->
    <a href="dashboard" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>S</b><b>R</b></span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg">Seguridad Retail</span>
    </a>

    <!-- Header Navbar -->
    <nav class="navbar navbar-static-top" role="navigation">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>
      <!-- Navbar Right Menu -->
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">

          <!-- User Account Menu -->
          <li class="dropdown user user-menu">
            <!-- Menu Toggle Button -->
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <!-- The user image in the navbar-->
              <img src="../files/usuarios/<?php echo $_SESSION['imagen']; ?>" class="user-image" alt="User Image">
              <!-- hidden-xs hides the username on small devices so only the image appears. -->
              <span class="hidden-xs"><?php echo $_SESSION['nombre']; ?></span>
            </a>
            <ul class="dropdown-menu">
              <!-- The user image in the menu -->
              <li class="user-header">
                <img src="../files/usuarios/<?php echo $_SESSION['imagen']; ?>" class="img-circle" alt="User Image">

                <p>
                  <?php echo $_SESSION['nombre']; ?>
                  <small>
                     <?php echo $_SESSION['cargo']; ?>
                  </small>
                </p>
              </li>

              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-left">
                   <a href="usuario" class="btn btn-app">
                      <i class="fa fa-users"></i> Perfil
                   </a>
                  <!-- <a href="usuario" class="btn btn-default btn-flat">Perfil</a> -->
                </div>
                <div class="pull-right">
                   <a href="../ajax/usuario.php?op=salir" class="btn btn-app">
                      <i class="fa fa-sign-out"></i> Cerrar Sesion
                    </a>
                  <!-- <a href="#" class="btn btn-default btn-flat">Cerrar Sesión</a> -->
                </div>
              </li>
            </ul>
          </li>

          <li>

          </li>
        </ul>
      </div>
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

      <!-- Sidebar user panel (optional) -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="../files/usuarios/<?php echo $_SESSION['imagen']; ?>" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p><?php echo $_SESSION['nombre']; ?></p>
          <!-- Status -->
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>
      <!-- <br> -->
      <!-- Sidebar Menu -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">MENU PRINCIPAL</li>
        <!-- Optionally, you can add icons to the links -->

        <!-- DASHBORAD -->
        <?php
         if ($_SESSION['dashboard']==1) {
            echo '<li class="active"><a class="sincron" href="#" data-target="dashboard"><i class="fa fa-fw fa fa-dashboard"></i><span>Dashboard</span></a></li>';
         }
         ?>

         <!-- PEDIDOS -->
         <?php
         if ($_SESSION['pedidos']==1) {
           echo ' <li class="treeview">
              <a href="#">
                <i class="fa fa-fw fa-table"></i><span>Pedidos de Cotización</span>
                <span class="pull-right-container">
                  <i class="fa fa-angle-left pull-right"></i>
                </span>
              </a>
              <ul class="treeview-menu">
                <li><a class="sincron" href="#" data-target=""><i class="fa fa-circle-o"></i>General</a></li>
               <li><a class="sincron" href="#" data-target=""><i class="fa fa-circle-o"></i>Pendientes</a></li>
               <li><a class="sincron" href="#" data-target=""><i class="fa fa-circle-o"></i>Atendidos</a></li>
               <li><a class="sincron" href="#" data-target=""><i class="fa fa-circle-o"></i>Finalizado</a></li>
               <li><a class="sincron" href="#" data-target=""><i class="fa fa-circle-o"></i>Rechazado</a></li>
              </ul>
           </li>';
         }
         ?>

         <!-- PRODUCTOS -->
         <?php

         if ($_SESSION['productos']==1) {
           echo '<li class="treeview">
              <a href="#">
                <i class="fa fa-fw fa-cube"></i><span>Categorias y Productos</span>
                <span class="pull-right-container">
                  <i class="fa fa-angle-left pull-right abantybred"></i>
                </span>
              </a>
              <ul class="treeview-menu este">
                <li><a class="sincron" href="#" data-target="categoria"><i class="fa fa-circle-o"></i> Categorias </a></li>
                <li><a class="sincron" href="#" data-target="sub_categoria"><i class="fa fa-circle-o"></i> Sub-Categorias </a></li>
                <li><a class="sincron" href="#" data-target="producto"><i class="fa fa-circle-o"></i> Productos </a></li>
                <li><a class="sincron" href="#" data-target="accesorio"><i class="fa fa-circle-o"></i> Accesorios </a></li>
              </ul>
           </li>';
         }

         ?>

         <!-- ACCESOS -->
         <?php

         if ($_SESSION['accesos']==1) {
           echo '<li>
              <a class="sincron" href="#" data-target="usuario">
                <i class="fa fa-fw fa fa-user"></i><span>Gestion de Usuarios</span>
              </a>
           </li>';
         }

         ?>


     <!-- GESTION DE PLANTILLA -->
          <?php

          if ($_SESSION['plantilla']==1) {
          echo '<li class="treeview">
              <a href="#">
                <i class="fa fa-fw fa fa-cog"></i><span>Configuracion</span>
                <span class="pull-right-container">
                  <i class="fa fa-angle-left pull-right"></i>
                </span>
              </a>
              <ul class="treeview-menu">  

                    <li>
                      <a class="sincron" href="#" data-target="configuracion_generales">
                        <i class="fa fa-asterisk"></i>Gestor Plantilla           
                      </a>                     
                    </li>

                    <li>
                    <a class="sincron" href="#" data-target="gestor_slider">
                      <i class="fa fa-asterisk"></i>Gestor Sliders           
                    </a>                     
                  </li>


                  <li>
                  <a class="sincron" href="#" data-target="">
                    <i class="fa fa-asterisk"></i>Gestor Banners           
                  </a>                     
                </li>


                                
              </ul>
            </li>';
          }

          ?>

         <!-- REPORTES -->
         <?php

         if ($_SESSION['reportes']==1) {
          echo '<li class="treeview">
             <a href="#">
               <i class="fa fa-fw fa-newspaper-o"></i><span>Reportes</span>
               <span class="pull-right-container">
                 <i class="fa fa-angle-left pull-right"></i>
               </span>
             </a>
             <ul class="treeview-menu">
               <li><a class="sincron" href="#" data-target=""><i class="fa fa-circle-o"></i> --- </a></li>
               <li><a class="sincron" href="#" data-target=""><i class="fa fa-circle-o"></i> --- </a></li>
               <li><a class="sincron" href="#" data-target=""><i class="fa fa-circle-o"></i> --- </a></li>
             </ul>
           </li>';
         }

         ?>

      </ul>
      <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
  </aside>



<!-- Contenido -->

<section id="contenido">
      <?php include "dashboard.php" ?>
</section>






  <footer class="main-footer">
  <!-- To the right -->
  <div class="pull-right hidden-xs">
    Anything you want
  </div>
  <!-- Default to the left -->
  <strong>Copyright &copy; 2016 <a href="#">Company</a>.</strong> All rights reserved.
</footer>



  <!-- ChartJS -->
  <script src="../public/js/Chart.js"></script>
  <!-- FastClick -->
  <script src="../public/js/fastclick.js"></script>

</div>


</body>
</html>
