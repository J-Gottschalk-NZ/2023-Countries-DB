<?php

// Retrieve search term from form
$region_find = mysqli_real_escape_string($dbconnect, $_POST['sub_region']);

$where = "
sr1.Sub_Region_ID = $region_find OR 
sr2.Sub_Region_ID = $region_find

";

$find_query = get_query($dbconnect, $where);
$num_results = mysqli_num_rows($find_query);

// Get heading
$subregion_heading = get_heading($dbconnect, "sub_region", "Sub_Region_ID", "Sub_Region", $region_find);

?>

<h2>Subregion Results (<?php echo $subregion_heading; ?>, <?php echo $num_results ?> countries)</h2>


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