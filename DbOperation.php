<?php

header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Headers: *");
header("Access-Control-Allow-Methods: *");
class DbOperation
{
    //Database connection link
    private $con;
 
    //Class constructor
    function __construct()
    {
        //Getting the DbConnect.php file
        require_once dirname(__FILE__) . '/DbConnect.php';
  
        //Creating a DbConnect object to connect to the database
        $db = new DbConnect();
 
        //Initializing our connection link of this class
        //by calling the method connect of DbConnect class
        $this->con = $db->connect();
    }
	/*
	function getDate(){
		//Get current date and time
		date_default_timezone_set('Asia/Kolkata');
		$d = date("Y-m-d");
		//echo " Date:".$d."<BR>";
		$t = date("H:i:s");
	}
	*/
 
	/*
	* The create operation
	* When this method is called a new record is created in the database
	*/
	function createUser($idHuella,$nombre, $siglas,$correo, $area)
	{
			
		//Get current date and time
		//date_default_timezone_set('America/Mexico_City');
		/*$d = date("Y-m-d");
		//echo " Date:".$d."<BR>";
		$t = date("H:i:s");*/
		
		//sddss = s una cadena, dd dos numeros, ss dos cadenas
		$stmt = $this->con->prepare("INSERT INTO usuarios (ID, Nombre, Siglas, Correo, Area) VALUES (?, ?, ?, ?, ?)");
		$stmt->bind_param("issss",$idHuella, $nombre, $siglas, $correo, $area);
		if($stmt->execute())
			return true; 
		return false; 
	}
 

   function createAccessRegister($idUser, $idSensor)
    {
        date_default_timezone_set('America/Monterrey');
        $timestamp = date('Y-m-d H:i:s');
        $stmt = $this->con->prepare("INSERT INTO registros (IDUser, IDSensor, fecha_hora) VALUES (?, ?, ?)");
        $stmt->bind_param("iis", $idUser, $idSensor, $timestamp);
        if($stmt->execute())
        {
            //return true; 
        }/*
        else
        {
            return false; 
        }*/
     }
     
	function selectOneUser($idUser)
	{
		//sddss = s una cadena, dd dos numeros, ss dos cadenas
		$stmt = $this->con->prepare("SELECT siglas FROM usuarios WHERE ID = ?");
		$stmt->bind_param("i",$idUser);
		$stmt->execute();
		$stmt->bind_result($siglas);
		
		$datosguardados = array(); 
 
		while($stmt->fetch()){
			$datos  = array();
			$datos['Siglas'] = $siglas; 
		 
			array_push($datosguardados, $datos); 
		}
 
		return $datosguardados[0]; 

	}
     
	function selectLastRegister($idUser)
	{
        date_default_timezone_set('America/Monterrey');
        $timestamp = date('Y-m-d H:i:s');
		//sddss = s una cadena, dd dos numeros, ss dos cadenas
		$stmt = $this->con->prepare("SELECT ID, Fecha_Hora_Salida FROM registros WHERE idUser = ? ORDER BY ID DESC LIMIT 1");
		$stmt->bind_param("i",$idUser);
		$stmt->execute();
		$stmt->bind_result($id, $fecha);
		
		$datosguardados = array(); 
 
		while($stmt->fetch()){
			//$datos  = array();
			//$datos['Fecha'] = $fecha; 
            if($fecha == "0000-00-00 00:00:00"){
                
                return $id;
                
            }else{
                return false;
            }
			//array_push($datosguardados, $datos); 
		}
        //return 'saved';
	}
 
   public function closeLastRegister($id)
    {
        date_default_timezone_set('America/Monterrey');
        $timestamp = date('Y-m-d H:i:s');
        $stmt = $this->con->prepare("UPDATE registros SET Fecha_Hora_Salida = ? WHERE ID = ?");
        $stmt->bind_param("si", $timestamp, $id);
        if($stmt->execute())
        {
            return "closed"; 
        }
        else
        {
            return false; 
        }
    }
	/*
	* The read operation
	* When this method is called it is returning all the existing record of the database
	*/
	function selectUsers()
	{
		$stmt = $this->con->prepare("SELECT ID, Nombre, Siglas, Correo, Area FROM usuarios ORDER BY ID ASC");
		$stmt->execute();
		$stmt->bind_result($id, $nombre, $siglas, $correo, $area);
		
		$datosguardados = array(); 
 
		while($stmt->fetch()){
			$datos  = array();
			$datos['ID'] = $id; 
			$datos['Siglas'] = $siglas; 
			$datos['Nombre'] = $nombre; 
			$datos['Correo'] = $correo; 
			$datos['Area'] = $area;
		 
			array_push($datosguardados, $datos); 
		}
 
		return $datosguardados; 

	}
	function selectConsultores()
	{
		$stmt = $this->con->prepare("SELECT id, siglas, nombre, area, correo, añadido FROM consultores ORDER BY area ASC");
		$stmt->execute();
		$stmt->bind_result($id, $siglas, $nombre, $area, $correo, $added);
		
		$consultores = array(); 
 
		while($stmt->fetch()){
			$datos  = array();
			$datos['id'] = $id; 
			$datos['siglas'] = $siglas; 
			$datos['nombre'] = $nombre; 
			$datos['area'] = $area;
			$datos['correo'] = $correo;
			$datos['anadido'] = $added;
		 
			array_push($consultores, $datos); 
		}
 
		return $consultores; 

	}
	
	function selectAccessRegister()
	{
		$stmt = $this->con->prepare("SELECT registros.id, nombre, siglas, lugar, Fecha_hora, Fecha_Hora_Salida FROM registros 
			INNER JOIN usuarios ON registros.IDUser = usuarios.ID
			INNER JOIN sensores ON registros.IDSensor = sensores.ID  ORDER BY id ASC");
   		//$stmt = $this->con->prepare("SELECT * FROM registros INNER JOIN usuarios ON registros.IDUser = usuarios.IDUser ORDER BY id ASC");
		$stmt->execute();
		$stmt->bind_result($id, $nombre, $siglas, $lugar, $fecha_hora, $fecha_salida);
		
		$datosguardados = array(); 
 
		while($stmt->fetch()){
			$datos  = array();
			$datos['ID'] = $id; 
			$datos['siglas'] = $siglas; 
			$datos['nombre'] = $nombre; 
			$datos['lugar'] = $lugar; 
			$datos['Fecha_Hora'] = $fecha_hora;
			$datos['Fecha_Hora_Salida'] = $fecha_salida;
		 
			array_push($datosguardados, $datos); 
		}
 
		return $datosguardados; 

	}
 
	/*
	* The update operation
	* When this method is called the record with the given id is updated with the new given values
	*/
	function updateUser($id, $nombre, $siglas, $correo, $area)
	{
		$stmt = $this->con->prepare("UPDATE usuarios SET Nombre = ?, Siglas = ?, Correo = ?, Area = ? WHERE ID = ?");
		$stmt->bind_param("ssssi",$nombre, $siglas, $correo, $area, $id);
		if($stmt->execute())
			return true; 

		return false; 
	}

	/*
	* The delete operation
	* When this method is called record is deleted for the given id 
	*/
	function deleteUser($id){
		$stmt = $this->con->prepare("DELETE FROM usuarios WHERE ID = ?");
		$stmt->bind_param("i", $id);
		if($stmt->execute())
			return true; 

		return false; 
	}
}