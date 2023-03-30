<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");

include_once '../private/config.php';
include_once '../private/database.php';
include_once '../class/healthdeclarationprofile.php';

$database = new Database();
$db = $database->getConnection();
$item = new HealthDeclarationProfile($db);

$item->hd_id = $_POST['id'];

if($item->delete()){
    http_response_code(201);
    echo json_encode("Record deleted successfully.");
} else{
    http_response_code(304);
    echo json_encode("Record could not be deleted.");
}


?>