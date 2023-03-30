<?php 
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

// define("PROJECT_ROOT_PATH",'');

include_once '../private/config.php';
include_once '../private/database.php';
include_once '../class/healthdeclarationprofile.php';

$database = new Database();
$db = $database->getConnection();
$item = new HealthDeclarationProfile($db);

$item->fname = $_POST['firstname'];
$item->mi = $_POST['middleinitial'];
$item->lname = $_POST['lastname'];
$item->age = $_POST['age'];
$item->gender = $_POST['gender'];
$item->mobile = $_POST['mobilenumber'];
$item->temp = $_POST['temperature'];
$item->diagnosed = $_POST['diagnosed'];
$item->encounter = $_POST['encounter'];
$item->vaxxed = $_POST['vaxxed'];
$item->nationality = $_POST['nationality'];

// var_dump($item);
if($item->create()){
    http_response_code(201);
    echo json_encode("Record created successfully.");
} else{
    http_response_code(500);
    echo json_encode("Record could not be created.");
}





?>