<?php

$where = "
a.Mythical = 1

";

$find_query = get_query($dbconnect, $where);
// $num_results = mysqli_num_rows($find_query);

?>

<h2>Mythical National Animal</h2>


<?php

include("results.php");

 ?>