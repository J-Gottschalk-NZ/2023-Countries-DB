<?php

// Send user to home page if they are trying to browse the directory
if(!isset($_REQUEST['Country']))
{
    header('Location: index.php');
}

else {
    $country_name = $_REQUEST['Country'];

    $where = "
    c.Country LIKE '$country_name'
    ";

    $find_query = get_query($dbconnect, $where);
}

?>

<h2>Opps! That looks like a Duplicate.</h2>
<div class="error">
The database already has an entry for <?php echo $country_name; ?>.  It is below.
</div>

<br /><br />
<?php
    include("results.php");
?>
