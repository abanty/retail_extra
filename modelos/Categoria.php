<?php
//Incluimos inicialmente la conexion de la base de datos
require	"../config/Conexion.php";

Class Categoria
{

	//Implementando constructor
	public function __construct()
	{

	}

	//Implementamos un metodo para inserta registros
	public function insertar($nombre,$color,$style)
	{
		$sql="INSERT INTO categoria (nombre,color,style,estado)
		VALUES ('$nombre','$color','$style','1')";
		return ejecutarConsulta($sql);
	}

	//Implementar un metodo para editar registros
	public function editar($idcategoria,$nombre,$color,$style)
	{
		$sql = "UPDATE categoria SET nombre='$nombre',color='$color',style='$style'
		WHERE idcategoria='$idcategoria'";
		return ejecutarConsulta($sql);
	}

	//Implementamos un metodo para desactivar categorias
	public function desactivar($idcategoria)
	{
		$sql="UPDATE categoria SET estado='0' WHERE idcategoria = '$idcategoria'";
		return ejecutarConsulta($sql);
	}

	//Implementamos un metodo para activar categorias
	public function activar($idcategoria)
	{
		$sql="UPDATE categoria SET estado='1' WHERE idcategoria = '$idcategoria'";
		return ejecutarConsulta($sql);
	}

	//Implementar un metodo para mostrar los datos de un registro a modificar
	public function mostrar ($idcategoria)
	{
		$sql="SELECT * FROM categoria WHERE idcategoria='$idcategoria'";
		return ejecutarConsultaSimpleFila($sql);
	}

	//Implementar un metodo para listar los registros
	public function listar()
	{
		$sql="SELECT * FROM categoria ORDER BY idcategoria DESC";
		return ejecutarConsulta($sql);
	}

	//Implementar un metodo para listar los registros y mostrar en el select
	public function selectcat()
	{
		$sql="SELECT * FROM categoria WHERE estado=1";
		return ejecutarConsulta($sql);
	}

}

 ?>
