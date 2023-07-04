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
    if(isset($_GET['id'])){
        $item = new Organization($db);
        $item->id = isset($_GET['id']) ? $_GET['id'] : die();
    
        $item->getSingleOrganization();
        if($item->name != null){
            // create array
            $emp_arr = array(
                "id" =>  $item->id,
                "established" => $item->established,
                "name" => $item->name,
                "email" => $item->email,
                "phone" => $item->phone,
                "description" => $item->description,
                "leader" => $item->leader,
                "created" => $item->created
            );
        
            http_response_code(200);
            echo json_encode($emp_arr);
        }
        else{
            http_response_code(404);
            echo json_encode("Organization not found.");
        }
    }
    else {
        $items = new Organization($db);
        $stmt = $items->getOrganizations();
        $itemCount = $stmt->rowCount();

        // echo json_encode($itemCount);
        if($itemCount > 0){
            
            $organizationArr = array();
            $organizationArr["body"] = array();
            $organizationArr["itemCount"] = $itemCount;
            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
                extract($row);
                $e = array(
                    "id" => $id,
                    "established" => $established,
                    "name" => $name,
                    "email" => $email,
                    "phone" => $phone,
                    "description" => $description,
                    "leader" => $leader,
                    "created" => $created
                );
                array_push($organizationArr["body"], $e);
            }
            echo json_encode($organizationArr);
        }
        else{
            http_response_code(404);
            echo json_encode(
                array("message" => "No record found.")
            );
        }
    }
        
?>