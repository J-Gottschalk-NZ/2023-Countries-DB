<?php
// loop through the results and display them
while($find_rs=mysqli_fetch_assoc($find_query))

{

    // If country name and official name are the same, then only show the country name.  Otherwise, show the official name in brackets after the country name.

    $country_name = $find_rs['Country'];
    $official_name = $find_rs['Official_Name'];

    if ($country_name == $official_name) {
        $full_name = $country_name;
    }
    else {
        $full_name = $country_name." <i>(".$official_name.")</i>";
    }

    // Set up Sub Regions
    $subregion_1 = $find_rs['SubRegion1'];
    $subregion_2 = $find_rs['SubRegion2'];
    
    // Sub region_ID 27 is 'None' (ie: no second sub region)
    if($find_rs['SubRegion2_ID'] == 27) {
        $sub_heading = "Sub Region";
        // $subregions = $subregion_1;
        $subregions = "<a href='index.php?page=quick_click_results&quick_find=".$subregion_1."'>".$subregion_1."</a>";
    }

    else {
        $sub_heading = "Sub Regions";
        $subregions = 
        "<a href='index.php?page=quick_click_results&quick_click=".$subregion_1."'>".$subregion_1."</a> and <a href='index.php?page=quick_click_results&quick_find=".$subregion_2."'>".$subregion_2."</a>"
        ;
    }

    // Set up Quality of Life score and descriptors
    $quality_score = $find_rs['Quality'];

    if($quality_score == 0) {$quality_descriptor = "unknown"; }
    elseif ($quality_score < 40) {$quality_descriptor = "yikes";}
    elseif ($quality_score < 48) {$quality_descriptor = "very_low";}
    elseif ($quality_score < 52) {$quality_descriptor = "low";}
    elseif ($quality_score < 58) {$quality_descriptor = "average";}
    elseif ($quality_score < 67) {$quality_descriptor = "good";}
    elseif ($quality_score < 70) {$quality_descriptor = "great";}
    else {$quality_descriptor = "incredible";}

    // Our descriptors are also css classes, which means that for 
    // 'very low' we need to replace the underscore needed in the 
    // css with a human readable space.

    // If the quality is unknown, we don't need the score

    if($quality_descriptor == "unknown")
    {
        $quality_output = "<a href='index.php?page=quality_search&quality=0'>Unknown</a>";
    }

    elseif($quality_descriptor != "very_low")
    {
    $quality_output = $quality_score." - <a href='index.php?page=quality_search&quality=".$quality_score."'>".$quality_descriptor."</a>";
    }

    else {
        $quality_output = $quality_score." - <a href='index.php?page=quality_search&quality=".$quality_score."'>very low</a>";
    }


    ?>

    <div class="results <?php echo $quality_descriptor; ?>">
        <!-- Country heading -->
        <h3>
            <?php echo $full_name; ?>
        </h3>

        <p>
            <b>Region: </b>
            <a href="index.php?page=quick_click_results&quick_find=<?php echo $find_rs['Region']; ?>">
            <?php echo $find_rs['Region']; ?>
            </a>
            <br />

            <b><?php echo $sub_heading; ?>: </b>
            <?php echo $subregions; ?>
        </p>

        <p><b>National Animal: 
            </b>
                <a href="index.php?page=quick_click_results&quick_find=<?php echo $find_rs['Animal_Name']; ?>">
                <?php echo $find_rs['Animal_Name']; ?>
                </a>
            </p>
        <p><b>Quality of Life Score: </b> 
        <?php echo $quality_output; ?>
        </p>

        

    </div>
    <br />

    <?php
}

?>