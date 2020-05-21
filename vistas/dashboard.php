  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Dashboard
        <small>Modulos</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Menu Principal</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <!-- Main content -->
    <!-- <section class="content container-fluid"> -->

      <section class="content">
         <!-- Small boxes (Stat box) -->
         <div class="row">
           <div class="col-lg-3 col-xs-6">
             <!-- small box -->
             <div class="small-box bg-aqua">
               <div class="inner">
                 <h3>150</h3>

                 <p>Ordenes nuevas</p>
               </div>
               <div class="icon">
                 <i class="ion ion-bag"></i>
               </div>
               <a href="#" class="small-box-footer">Más información <i class="fa fa-arrow-circle-right"></i></a>
             </div>
           </div>
           <!-- ./col -->
           <div class="col-lg-3 col-xs-6">
             <!-- small box -->
             <div class="small-box bg-green">
               <div class="inner">
                 <h3>53<sup style="font-size: 20px">%</sup></h3>

                 <p>Nivel de ganancia</p>
               </div>
               <div class="icon">
                 <i class="ion ion-stats-bars"></i>
               </div>
               <a href="#" class="small-box-footer">Más información <i class="fa fa-arrow-circle-right"></i></a>
             </div>
           </div>
           <!-- ./col -->
           <div class="col-lg-3 col-xs-6">
             <!-- small box -->
             <div class="small-box bg-yellow">
               <div class="inner">
                 <h3>44</h3>

                 <p>Usuarios registrados</p>
               </div>
               <div class="icon">
                 <i class="ion ion-person-add"></i>
               </div>
               <a href="#" class="small-box-footer">Más información <i class="fa fa-arrow-circle-right"></i></a>
             </div>
           </div>
           <!-- ./col -->
           <div class="col-lg-3 col-xs-6">
             <!-- small box -->
             <div class="small-box bg-red">
               <div class="inner">
                 <h3>65</h3>

                 <p>Visitas</p>
               </div>
               <div class="icon">
                 <i class="ion ion-pie-graph"></i>
               </div>
               <a href="#" class="small-box-footer">Más información <i class="fa fa-arrow-circle-right"></i></a>
             </div>
           </div>
           <!-- ./col -->
         </div>

         <!-- OTHER ROW -->
        <div class="row">
          <div class="col-md-6">
            <!-- AREA CHART -->
            <div class="box box-primary">
               <div class="box-header with-border">
                 <h3 class="box-title">Gráfico de Areas</h3>

                 <div class="box-tools pull-right">
                  <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                 </div>
               </div>
               <div class="box-body">
                 <div class="chart">
                  <canvas id="areaChart" style="height:250px"></canvas>
                 </div>
               </div>
               <!-- /.box-body -->
            </div>
            <!-- /.box -->

            <!-- DONUT CHART -->
            <div class="box box-danger">
               <div class="box-header with-border">
                 <h3 class="box-title">Gráfico de Dona</h3>

                 <div class="box-tools pull-right">
                  <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                 </div>
               </div>
               <div class="box-body">
                 <canvas id="pieChart" style="height:250px"></canvas>
               </div>
               <!-- /.box-body -->
            </div>
            <!-- /.box -->

          </div>
          <!-- /.col (LEFT) -->
          <div class="col-md-6">
            <!-- LINE CHART -->
            <div class="box box-info">
               <div class="box-header with-border">
                 <h3 class="box-title">Gráfico Lineal</h3>

                 <div class="box-tools pull-right">
                  <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                 </div>
               </div>
               <div class="box-body">
                 <div class="chart">
                  <canvas id="lineChart" style="height:250px"></canvas>
                 </div>
               </div>
               <!-- /.box-body -->
            </div>
            <!-- /.box -->

            <!-- BAR CHART -->
            <div class="box box-success">
               <div class="box-header with-border">
                 <h3 class="box-title">Gráfico de Barras</h3>

                 <div class="box-tools pull-right">
                  <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                  </button>
                  <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                 </div>
               </div>
               <div class="box-body">
                 <div class="chart">
                  <canvas id="barChart" style="height:230px"></canvas>
                 </div>
               </div>
               <!-- /.box-body -->
            </div>
            <!-- /.box -->

          </div>
          <!-- /.col (RIGHT) -->
        </div>
        <!-- /.row -->

      <!-- </section> -->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  

  <!-- ChartJS -->
  <!-- <script src="../public/js/Chart.js"></script> -->
  <!-- FastClick -->
  <!-- <script src="../public/js/fastclick.js"></script> -->


<!-- 
  <script type="text/javascript">
  $(window).on('load', function () {
     $('body').css({overflow:"hidden"})
      setTimeout(function () {
      $('body').css({overflow:"auto"})
    $(".loader-page").css({visibility:"hidden",opacity:"0"})
  }, 1000);
  });
  </script> -->
