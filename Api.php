<?php 
header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Headers: *");
header("Access-Control-Allow-Methods: *");
header("Content-Type", "multipart/form-data");
/******** GRILLOS	********/
 
	//getting the dboperation class
	require_once '../includes/DbOperation.php';
 
	//function validating all the paramters are available
	//we will pass the required parameters to this function 
	function isTheseParametersAvailable($params){
		//assuming all parameters are available 
		$available = true; 
		$missingparams = ""; 
 
		//print_r($_POST);
		foreach($params as $param){
			if(!isset($_POST[$param]) || strlen($_POST[$param])<=0){
				$available = false; 
				$missingparams = $missingparams . ", " . $param; 
			}
		}
 
		//if parameters are missing 
		if(!$available){
			$response = array();
			$response['error'] = true; 
			$response['message'] = 'Parameters ' . substr($missingparams, 1, strlen($missingparams)) . ' missing';
 
			//displaying error
			echo json_encode($response);

			//stopping further execution
			die();
		}
	}

	//an array to display response
	$response = array();
 
	//if it is an api call 
	//that means a get parameter named api call is set in the URL 
	//and with this parameter we are concluding that it is an api call
	if(isset($_GET['apicall'])){
 
		switch($_GET['apicall']){
 
			//the CREATE operation
			//if the api call value is 'createtemphum'
			//we will create a record in the database
			case 'createUser':
				//first check the parameters required for this request are available or not 
				isTheseParametersAvailable(array('id','nombre','siglas','correo','area'));
 
				//creating a new dboperation object
				$db = new DbOperation();
 
				//creating a new record in the database
				$result = $db->createUser(
				$_POST['id'],
				$_POST['nombre'],
				$_POST['siglas'],
				$_POST['correo'],
				$_POST['area']
				);
 
				//if the record is created adding success to response
				if($result){
					//record is created means there is no error
					$response['error'] = false; 
 
					//in message we have a success message
					$response['message'] = 'User adedd successfully';
 
					//and we are getting all the datostemphum from the database in the response
					//$response['temphum'] = $db->selectTempHum();
					//REVISAR
				}else{
					//if record is not added that means there is an error 
					$response['error'] = true; 
 
					//and we have the error message
					$response['message'] = 'Some error occurred please try again';
				}
			break; 

/*
            case 'register_access':
                isTheseParametersAvailable(array('iduser','idsensor'));
 
				//creating a new dboperation object
				$db = new DbOperation();
 
				//$response['users'] = $db->selectUsers($_POST['idSensor']);
				//creating a new record in the database
				$response = $db->registerAccess(
				$_POST['iduser'],
				$_POST['idsensor']
				);
 
				$response['users'] = $db->selectOneUser($_POST['iduser']);
    
                break;*/
			//the CREATE operation
			//if the api call value is 'createtemphum'
			//we will create a record in the database
			case 'createAccessRegister':
				//first check the parameters required for this request are available or not 
				isTheseParametersAvailable(array('iduser','idsensor'));
 
				//creating a new dboperation object
				$db = new DbOperation();
				
				//creating a new record in the database
				$result = $db->selectLastRegister(
				$_POST['iduser']
				);
				
				if($result){
				    $response = $db->closeLastRegister($result);
					//$response['message'] = 'register closed';
					//REVISAR
				}else{
					//if record is not added that means there is an error 
					$response['error'] = false; 
 
					//and we have the error message
					//$response['message'] = 'register clo';
					
    				$response = $db->createAccessRegister(
        				$_POST['iduser'],
        				$_POST['idsensor']
    				);
     
    				$response['users'] = $db->selectOneUser($_POST['iduser']);
				}
				
			break; 
 
			//the READ operation
			//if the call is getUsers
			case 'getUsers':
				$db = new DbOperation();
				$response['error'] = false; 
				$response['message'] = 'Request successfully completed';
				$response['users'] = $db->selectUsers();
			break; 
			case 'getConsultores':
				$db = new DbOperation();
				$response['error'] = false; 
				$response['message'] = 'Request successfully completed';
				$response['consultores'] = $db->selectConsultores();
			break; 

			case 'getAccessRegister':
				$db = new DbOperation();
				$response['error'] = false; 
				$response['message'] = 'Request successfully completed';
				$response['registers'] = $db->selectAccessRegister();
			break; 

			case 'getOneUser':
                isTheseParametersAvailable(array('idUser'));
                
				$db = new DbOperation();
				$result = $db->selectOneUser($_POST['idUser']);
 
				//if the record is created adding success to response
				if($result){
					//record is created means there is no error
					$response['error'] = false; 
 
					//in message we have a success message
					$response['message'] = 'User adedd successfully';
 
					//and we are getting all the datostemphum from the database in the response
					//$response['temphum'] = $db->selectTempHum();
					//REVISAR
				}else{
					//if record is not added that means there is an error 
					$response['error'] = true; 
 
					//and we have the error message
					$response['message'] = 'Some error occurred please try again';
				}
			break; 

 
			//the UPDATE operation
			case 'updateUser':
				isTheseParametersAvailable(array('id','nombre','siglas','correo','area'));
				$db = new DbOperation();
				$result = $db->updateUser(
							$_POST['id'],
							$_POST['nombre'],
							$_POST['siglas'],
							$_POST['correo'],
							$_POST['area']
							);
 
				if($result){
					$response['error'] = false; 
					$response['message'] = 'Actualizado';
					//$response['temphum'] = $db->selectTempHum();
				}else{
					$response['error'] = true; 
					$response['message'] = 'Some error occurred please try again';
				}
			break; 
 
			//the delete operation

			//VALIDAR QUE EL ID SEA UN NUMERO ENTERO

			case 'deleteUser':
				//for the delete operation we are getting a GET parameter from the url having the id of the record to be deleted
				//echo $_POST['id'];
				if(isset($_POST['id'])){
					$db = new DbOperation();
					if($db->deleteUser($_POST['id'])){
						$response['error'] = false; 
						$response['message'] = 'Hero deleted successfully';
						//$response['temphum'] = $db->selectTempHum();
					}else{
						$response['error'] = true; 
						$response['message'] = 'Some error occurred please try again';
					}
				}else{
					$response['error'] = true; 
					$response['message'] = 'Nothing to delete, provide an id please';
				}
			break; 

			default:
				//las opciones deben estar escritas exactamente (no mayusculas)
				$response['error'] = true; 
				$response['message'] = 'No se reconoce la opcion' . " " . $_GET['apicall'];
			break;
		}
	}else{
		//if it is not api call 
		//pushing appropriate values to response array 
		$response['error'] = true; 
		$response['message'] = 'Invalid API Call';
	}
 
	//displaying the response in json structure 
	echo json_encode($response);
?>