<?php
    header("Access-Control-Allow-Origin: *");
    header("Content-Type: application/json; charset=UTF-8");
    header("Access-Control-Allow-Methods: POST");
    header("Access-Control-Max-Age: 3600");
    header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
    
    include_once '../../config/database.php';
    include_once '../../models/organizations.php';
    
    $database = new Database();
    $db = $database->getConnection();
    
    $item = new Organization($db);
    
    $data = json_decode(file_get_contents("php://input"));
    
    $item->id = $data->id;
    
    // Organization values
    $item->established = $data->established;
    $item->name = $data->name;
    $item->email = $data->email;
    $item->phone = $data->phone;
    $item->description = $data->description;
    $item->leader = $data->leader;
    $item->created = date('Y-m-d H:i:s');
    
    if($item->updateOrganization()){
        echo json_encode(['message'=>'Organization updated successfully.']);
    } else{
        echo json_encode(['message'=>'Organization could not be updated.']);
    }
?>