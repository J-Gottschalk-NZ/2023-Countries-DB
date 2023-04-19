<?php 

// function to 'clean' data
function test_input($data) {
	$data = trim($data);	
	$data = htmlspecialchars($data); //  needed for correct special character rendering
	return $data;
}

function get_query($dbconnect, $where_condition)

{
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

	// Concatenate the WHERE condition to the query
	$find_sql .= " WHERE " . $where_condition;

	// Add in ordering!
	$find_sql .= " ORDER BY c.Country ASC";

	$find_query = mysqli_query($dbconnect, $find_sql);
	return $find_query;
}

function makeDropdown($dbconnect, $table, $idField, $valueField, $firstItem, $orderBy, $needed, $searchClass, $selectName = null)
{
	$dropdownSql = "SELECT * FROM `$table` ORDER BY `$orderBy` ASC";
    $dropdownQuery = mysqli_query($dbconnect, $dropdownSql);

	if($selectName == null) {
		$selectName = $table;
	}

	// Start of select area

	// If drop down can't be left blank...
	if($needed == "yes") {
    echo '<select class='.$searchClass.' name="' . $selectName . '" required>';

	// first option 
	echo '<option value="" selected disabled hidden>' . $firstItem . '</option>';
	}

	// If dropdown is optional...
	else {
		echo '<select class='.$searchClass.' name="' . $selectName . '" >';
		echo '<option value="None" selected hidden>' . $firstItem . '</option>';
	}
	

	// iterate through DB to create options
    while ($dropdownRs = mysqli_fetch_assoc($dropdownQuery)) 
		{

		// check value is not 'None'

		if($dropdownRs[$valueField]!= "None") {

        echo '<option value="' . $dropdownRs[$idField] . '">' . $dropdownRs[$valueField] . '</option>';
		}
    }

    echo '</select>';
	// end of selection area

}

// Used to make dropdown menus in search forms
function makeDropdownForm($dbconnect, $table, $idField, $valueField, $pageName, $firstItem, $orderBy) {

	echo '<form class="searchform" method="post" action="index.php?page=$pageName" enctype="multipart/form-data">';

	// Make drowdown with dropdown function.
	makeDropdown($dbconnect, $table, $idField, $valueField, $firstItem, $orderBy, "yes", "search");

	// submit button
    echo '<input class="submit" type="submit" name="' . $table . '_find" value="&#xf002;" formaction="index.php?page=' . $pageName . '" />';

	echo '</form>';
}

// Retrieve heading based on ID number 
function get_heading($dbconnect, $table, $idField, $valueField, $to_find) {
	$heading_sql = "SELECT * FROM $table WHERE $idField = $to_find";
	$heading_query = mysqli_query($dbconnect, $heading_sql);
	$heading_rs = mysqli_fetch_assoc($heading_query);

	$heading_name = $heading_rs[$valueField];
	return $heading_name;
}


// Retrieve ID based on item name
function retrieveItem($dbconnect, $table, $valueField, $idField, $to_find) {

	$retrieve_sql = "SELECT * FROM $table WHERE $valueField LIKE '$to_find'";
	$retrieve_query = mysqli_query($dbconnect, $retrieve_sql);
	$retrieve_rs = mysqli_fetch_assoc($retrieve_query);

	$num_rows = mysqli_num_rows($retrieve_query);

	if ($num_rows > 0) {
	return $retrieve_rs[$idField];}
	else {return "None";}

}

?>