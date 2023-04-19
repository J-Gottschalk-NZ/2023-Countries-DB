<?php

$find_query = get_query($dbconnect, $where);
$num_results = mysqli_num_rows($find_query);

if ($num_results == 1) {
    $num_results = $num_results." result)";
}

else {
    $num_results = $num_results." results)";
}

$heading_brackets = "(".$quick_find.", ".$num_results ;

?>