<?php

// if users have pushed the submit button
// retrieve information from form
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // get values from form
    $country_name = mysqli_real_escape_string($dbconnect, $_POST['country_name']);
    $official_name = mysqli_real_escape_string($dbconnect, $_POST['official_name']);
    $regionID = mysqli_real_escape_string($dbconnect, $_POST['regions']);
    $subregion_ID = mysqli_real_escape_string($dbconnect, $_POST['sub_region']);
    $subregion2_ID = mysqli_real_escape_string($dbconnect, $_POST['sub_region2']);
    $national_animal = mysqli_real_escape_string($dbconnect, $_POST['national_animal']);
    $mythical = mysqli_real_escape_string($dbconnect, $_POST['mythical']);
    $life_quality = mysqli_real_escape_string($dbconnect, $_POST['life_quality']);

    // Set sub region 2 to 'None' (ID 27) if it's blank
    if ($subregion2_ID == "None") {
        $subregion2_ID = 27;
    }  
    
    // Set National animal to 'unknown' if it is left blank
    if ($national_animal == "") {
        $national_animal = "Unknown";
    }

    // if no official name is entered, make the official name the same as the country name
    if ($official_name == "") {
        $official_name = $country_name;
    }

    if ($life_quality == "") {
        $life_quality = 0;
    }

    // Check for duplicates
    $where = "
    c.Country LIKE '$country_name'
    ";

    $find_query = get_query($dbconnect, $where);
    $num_results = mysqli_num_rows($find_query);

    // If country name already exists, send users to 
    // error message page
    if ($num_results > 0) {
        header('Location: index.php?page=duplicate_result&Country='.$country_name);
        die();
    }


// get animal ID if it exists...
$animal_ID = retrieveItem($dbconnect, "animals", "Animal_Name", "Animal_ID", $national_animal);

// If animal does not exist, add it to the DB and then retrieve the ID for inserting into the DB
if ($animal_ID == "None") {
    // add to animal table
    $add_animal_sql = "INSERT INTO `animals` (`Animal_ID`, `Animal_Name`, `Mythical`) VALUES (NULL, '$national_animal', $mythical); ";
    $add_animal_query = mysqli_query($dbconnect, $add_animal_sql);

    // retrieve ID
    $animal_ID = retrieveItem($dbconnect, 'animals', 'Animal_Name', 'Animal_ID', $national_animal);
}

// add entry to database
$addentry_sql = "INSERT INTO `countries` (`ID`, `Country`, `Region_ID`, `SubRegion_ID`, `SubRegion2_ID`, `Official_Name`, `Animal_ID`, `Quality`) VALUES (NULL, '$country_name', $regionID, $subregion_ID, $subregion2_ID, '$official_name', $animal_ID, $life_quality); ";
$add_animal_query = mysqli_query($dbconnect, $addentry_sql);

}

// if they have accidentally landed on this page without pushing the submit button send them back to the homepage.
else {
    header('Location: index.php?page=home');
}

$where = "
c.Country = '$country_name' AND
c.Official_Name = '$official_name' AND
c.Quality = $life_quality

";
$find_query = get_query($dbconnect, $where);

?>

<h2>Congratulations</h2>

<p>Your entry has been added</p>

<?php

include("results.php");

?>