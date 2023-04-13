<h2>All Results</h2>

<?php

// c = countries table
// r = regions table
// a = animals table
// sr1 and sr2 are for our TWO sub-regions

$find_sql = "SELECT
c.*,
r.*,
sr1.Sub_Region AS SubRegion1, 
sr2.Sub_Region AS SubRegion2,
a.*


FROM
countries c
JOIN regions r ON r.Region_ID = c.Region_ID
JOIN sub_region sr1 ON c.SubRegion_ID = sr1.Sub_Region_ID
JOIN sub_region sr2 ON c.SubRegion2_ID = sr2.Sub_Region_ID
JOIN animals a ON a.Animal_ID = c.Animal_ID

";

$find_query = mysqli_query($dbconnect, $find_sql);

// loop through the results and display them
while($find_rs=mysqli_fetch_assoc($find_query))

{

    // Set up Sub Regions
    $subregion_1 = $find_rs['SubRegion1'];
    $subregion_2 = $find_rs['SubRegion2'];
    
    // Sub region_ID 27 is 'None' (ie: no second sub region)
    if($find_rs['SubRegion2_ID'] == 27) {
        $sub_heading = "Sub Region";
        $subregions = $subregion_1;
    }

    else {
        $sub_heading = "Sub Regions";
        $subregions = $subregion_1." and ".$subregion_2;
    }

    // Set up Quality of Life score and descriptors
    $quality_score = $find_rs['Quality'];

    if($quality_score == 0) {$quality_descriptor = "unknown"; }
    elseif ($quality_score < 40) {$quality_descriptor = "yikes";}
    elseif ($quality_score < 48) {$quality_descriptor = "very_low";}
    elseif ($quality_score < 52) {$quality_descriptor = "low";}
    elseif ($quality_score < 58) {$quality_descriptor = " average";}
    elseif ($quality_score < 67) {$quality_descriptor = "good";}
    elseif ($quality_score < 70) {$quality_descriptor = "great";}
    else {$quality_descriptor = "incredible";}

    // Our descriptors are also css classes, which means that for 
    // 'very low' we need to replace the underscore needed in the 
    // css with a human readable space.

    // If the quality is unknown, we don't need the score

    if($quality_descriptor == "unknown")
    {
        $quality_output = "Unknown";
    }

    elseif($quality_descriptor != "very_low")
    {
    $quality_output = $quality_score." - ".$quality_descriptor;
    }

    else {
        $quality_output = $quality_score." - very low";
    }


    ?>

    <div class="results <?php echo $quality_descriptor; ?>">
        <!-- Country heading -->
        <h3>
            <?php echo $find_rs['Country']; ?> 
            <i>(<?php echo $find_rs['Official_Name']; ?>)</i>
        </h3>

        <p>
            <b>Region: </b><?php echo $find_rs['Region']; ?><br />
            <b><?php echo $sub_heading; ?>: </b><?php echo $subregions; ?>
        </p>

        <p><b>National Animal: 
            </b><?php echo $find_rs['Animal_Name']; ?></p>
        <p><b>Quality of Life Score: </b> <?php echo $quality_output; ?></p>

        

    </div>
    <br />

    <?php
}

?>