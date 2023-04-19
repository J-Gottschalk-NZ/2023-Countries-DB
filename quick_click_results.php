<?php

// Send user to home page if they are trying to browse the directory
if(!isset($_REQUEST['quick_find']))
{
    header('Location: index.php');
}

else {
    $quick_find = $_REQUEST['quick_find'];

    $where = "
    a.Animal_Name LIKE '$quick_find'
    OR r.Region LIKE '$quick_find'
    OR sr1.Sub_Region LIKE '$quick_find'
    OR sr2.Sub_Region LIKE '$quick_find'
    ";

    include("get_data_heading.php");
}

?>

<h2>Quick Click Results <?php echo $heading_brackets; ?></h2>

<br /><br />
<?php
    include("results.php");
?>
