<?php

// Retrieve search term from form
$quality_find = mysqli_real_escape_string($dbconnect, $_POST['quality']);

// Create where clause for our various descriptors
if($quality_find == 1) 
{$where = "c.Quality = 0";}  # unknown

elseif ($quality_find == 2) 
{$where = "c.Quality BETWEEN 1 AND 39";} # yikes

elseif ($quality_find == 3) 
{$where = "c.Quality BETWEEN 40 AND 47";} # very low

elseif ($quality_find == 4) 
{$where = "c.Quality BETWEEN 48 AND 51";} # low

elseif ($quality_find == 5) 
{$where = "c.Quality BETWEEN 52 AND 57";} # average

elseif ($quality_find == 6) 
{$where = "c.Quality BETWEEN 58 AND 66";} # good

elseif ($quality_find == 7) 
{$where = "c.Quality BETWEEN 67 AND 69";} # great

else
    {$where = "c.Quality > 69";} # incredible


$find_query = get_query($dbconnect, $where);
$num_results = mysqli_num_rows($find_query);

// Get heading
$quality_heading = get_heading($dbconnect, 'quality', 'Quality_ID', 'Quality', $quality_find);

?>

<h2>Quality of Life Results (<?php echo $quality_heading; ?>, <?php echo $num_results ?> countries)</h2>
<?php

if ($num_results > 0) {
    include("results.php");
}

else {
    ?>
    <div class="error">
        Sorry there were no results for the search term 
        <?php echo $quality_find; ?>.
    </div>

    <?php
}