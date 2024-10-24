<?php
$api_key = '8ccfece9d2e0401a3d0041fec60d0150';
$api_betflix = 'oFwv3Uk9GlT5C0hX';

function CheckBet($username, $startdate, $enddate)
{
    global $api_key, $api_betflix;

    $headers = array();
    $headers[] = 'Content-Type: application/x-www-form-urlencoded';
    $headers[] = 'x-api-betflix: '.$api_betflix;
    $headers[] = 'x-api-key: '.$api_key;

    $url = 'https://api.bfx.fail/v4/user/creditHistory?username=' . $username . '&start=' . $startdate . '&end=' . $enddate;
    $context = stream_context_create([
        'http' => [
            'header' => implode("\r
", $headers),
            'ignore_errors' => true // Allows fetching the response even if a HTTP error status is returned
        ]
    ]);
    $response = file_get_contents($url, false, $context);

    if ($response === false) {
        $error = error_get_last();
        return "API request failed: " . $error['message'];
    } else {
        return $response;
    }
}

$status = CheckBet($_POST['username'],$_POST['startdate'],$_POST['enddate']);

echo $status;
?>