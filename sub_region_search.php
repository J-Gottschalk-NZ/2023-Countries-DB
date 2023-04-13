<?php

// Retrieve search term from form
$region_find = mysqli_real_escape_string($dbconnect, $_POST['sub_region']);

$where = "
sr1.Sub_Region_ID = $region_find OR 
sr2.Sub_Region_ID = $region_find

";

$find_query = get_query($dbconnect, $where);
$num_results = mysqli_num_rows($find_query);
$region_heading = mysqli_fetch_assoc($find_query);

?>

<h2>Region Results (<?php echo $region_heading['SubRegion1']; ?>, <?php echo $num_results ?> countries)</h2>


<?php

if ($num_results > 0) {
    include("results.php");
}

else {
    ?>
    <div class="error">
        Sorry there were no results for the search term 
        <?php echo $region_find; ?>.
    </div>

    <?php
}