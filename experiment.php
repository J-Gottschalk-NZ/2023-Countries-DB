<h2>All Results</h2>

<?php

$where = "r.Region_ID = 3";

$find_query = get_query($dbconnect, $where);

include("results.php");