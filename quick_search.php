<?php

// Retrieve search term from form
$quick_find = mysqli_real_escape_string($dbconnect, $_POST['quick_search']);

$where = "
a.Animal_Name LIKE '%$quick_find%'
OR c.Country LIKE '%$quick_find%'

";

include("get_data_heading.php");

?>

<h2>Quick Search Results <?php echo $heading_brackets; ?></h2>

<?php

if ($num_results > 0) {
    include("results.php");
}

else {
    ?>
    <div class="error">
        Sorry there were no results for the search term 
        <?php echo $quick_find; ?>.
    </div>

    <?php
}