<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: GET");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

include_once '../../config/database.php';
include_once '../../models/employees.php';

$database = new Database();
$db = $database->getConnection();
$item = new Employee($db);
$item->generateByAVG();

if ($item->selisih_kedatangan != null) {
    // create response array
    $data_arr = array(
        "selisih_kedatangan" => "Rata-rata selisih kedatangan konsumen: " . round($item->selisih_kedatangan,)." menit",
        "selisih_pelayanan_kasir" => "Pelayanan dimulai dengan waktu: " . round($item->selisih_pelayanan_kasir,)." menit",
        "selisih_keluar_antrian" => "Rata-rata waktu konsumen selesai dilayani: " . round($item->selisih_keluar_antrian,)." menit"
    );

    http_response_code(200);
    echo json_encode($data_arr);
}
else {
    http_response_code(404);
    echo json_encode(array("message" => "User not found."));
}
?>
