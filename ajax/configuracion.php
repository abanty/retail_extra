<?php 
require_once "../modelos/Configuracion.php";

$configuracion=new Configuracion();

// DATOSW EMPRESA
$razsocial = isset($_POST["razsocial"])? limpiarCadena($_POST["razsocial"]):"";
$ruc = isset($_POST["ruc"])? limpiarCadena($_POST["ruc"]):"";
$direccion = isset($_POST["direccion"])? limpiarCadena($_POST["direccion"]):"";
$telefono1 = isset($_POST["telefono1"])? limpiarCadena($_POST["telefono1"]):"";
$telefono2 = isset($_POST["telefono2"])? limpiarCadena($_POST["telefono2"]):"";

// DATOS PLANTILLA
$textoSuperior = isset($_POST["color_texto_superior"])? limpiarCadena($_POST["color_texto_superior"]):"";
$colorDominante = isset($_POST["color_dominante"])? limpiarCadena($_POST["color_dominante"]):"";
$logo = isset($_POST["logo"])? limpiarCadena($_POST["logo"]):"";
$extra_logo = isset($_POST["logo_extralogo"])? limpiarCadena($_POST["logo_extralogo"]):"";
$icono = isset($_POST["logo_favicon"])? limpiarCadena($_POST["logo_favicon"]):"";
$redesSociales = isset($_POST["redessociales"])? limpiarCadenaEditor($_POST["redessociales"]):"";



switch ($_GET["op"]) {
   /*-----------------------------------------------------
	|	INSERTAR DATOS EMPRESA Y PLANTILLA SIMULTANEAMENTE	|	
	-----------------------------------------------------*/
   case 'guardaryeditar':
      //LOGO 
      if (!file_exists($_FILES['logo']['tmp_name']) || !is_uploaded_file($_FILES['logo']['tmp_name'])){

            $logo=$_POST["imagenactual_logo"];

      }else{
           
         $ext = explode(".", $_FILES["logo"]["name"]);
            if ($_FILES['logo']['type'] == "image/jpg" || $_FILES['logo']['type'] == "image/jpeg" || $_FILES['logo']['type'] == "image/png")
            {		
               $logo = '/public/logos/logos_plantilla/'.round(microtime(true)) . '.' . end($ext);
               move_uploaded_file($_FILES["logo"]["tmp_name"],'..'.$logo);
            }
      } 

      //EXTRA LOGO 
      if (!file_exists($_FILES['logo_extralogo']['tmp_name']) || !is_uploaded_file($_FILES['logo_extralogo']['tmp_name'])){

         $extra_logo=$_POST["imagenactual_extra"];

      }else{
         
         $ext = explode(".", $_FILES["logo_extralogo"]["name"]);
            if ($_FILES['logo_extralogo']['type'] == "image/jpg" || $_FILES['logo_extralogo']['type'] == "image/jpeg" || $_FILES['logo_extralogo']['type'] == "image/png")
            {		
               $extra_logo = '/public/logos/logos_extra/'.round(microtime(true)) . '0.' . end($ext);
               move_uploaded_file($_FILES["logo_extralogo"]["tmp_name"],'..'.$extra_logo);
            }
      } 
      
      // ICONO
      if (!file_exists($_FILES['logo_favicon']['tmp_name']) || !is_uploaded_file($_FILES['logo_favicon']['tmp_name']))
      {
            $icono=$_POST["imagenactual_favicon"];
         }
         else
         {
            $ext_fav = explode(".", $_FILES["logo_favicon"]["name"]);
            if ($_FILES['logo_favicon']['type'] == "image/jpg" || $_FILES['logo_favicon']['type'] == "image/jpeg" || $_FILES['logo_favicon']['type'] == "image/png")
            {		
               $icono = '/public/logos/logos_favicon/'.round(microtime(true)) . '1.' . end($ext_fav);
               move_uploaded_file($_FILES["logo_favicon"]["tmp_name"],'..'.$icono);
         }
      }     
      
      $list = $configuracion->obtener_idempresa();  
      while ($reg=$list->fetch_object()) {
         $idempresa = $reg->idempresa;
      }

      $list_plantilla = $configuracion->obtener_idplantilla();  
      while ($reg_plantilla=$list_plantilla->fetch_object()) {
         $idplantilla = $reg_plantilla->idplantilla;         
      }
      
      if (empty($idempresa)) {
         $rspta=$configuracion->insertar_empresa($razsocial,$ruc,$direccion,$telefono1,$telefono2,$textoSuperior,$colorDominante,$logo,$extra_logo,$icono,$redesSociales);
         echo $rspta ? "Información Guardada" : "No se pudo guardar";
         
      }else {
         $rspta=$configuracion->editar_empresa($idempresa,$idplantilla,$razsocial,$ruc,$direccion,$telefono1,$telefono2,$textoSuperior,$colorDominante,$logo,$extra_logo,$icono,$redesSociales);
         echo $rspta ? "Información Modificada" : "Producto no se pudo modificar"; 
      }      
 

   break;


   /*----------------------------------------
	|	 MOSTRAR CAMPOS EMPRESA Y PLANTILLA   |	
	----------------------------------------*/
   case 'mostrar_informacion_entidad':   

      $list = $configuracion->obtener_idempresa();  
      while ($reg=$list->fetch_object()) {
         $idempresa = $reg->idempresa;
      }

      $list_plantilla = $configuracion->obtener_idplantilla();  
      while ($reg_plantilla=$list_plantilla->fetch_object()) {
         $idplantilla = $reg_plantilla->idplantilla;         
      }

      $show_data_emp = !empty($idempresa) ? $configuracion->mostrar_empresa($idempresa) : null;
      $show_data_plan = !empty($idplantilla) ? $configuracion->mostrar_plantilla($idplantilla) : null;    
      
      $results = array(
         "datos_empresa"=>$show_data_emp,
         "datos_plantilla"=>$show_data_plan);
      echo json_encode($results);

    break;
   

}











?>