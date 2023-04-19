<div class="add-form">

<h2>Add An Entry</h2>
<p>Please use the form below to add an entry to the database.</p>

<form method="post" enctype="multipart/form-data" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]."?page=add_success"); ?>">

<!-- Country Name (required) -->
<input class="add-field" type="text" name="country_name" value = "" Placeholder = "Country Name (required)" required/>

<!-- Official Country Name (optional) -->
<p>
<input class="add-field" type="text" name="official_name" value = "" Placeholder = "Official Country Name (optional)" />
</p>

<!-- Region Drop Down (required) -->
<p>
    <?php
    makeDropdown($dbconnect, 'regions', 'Region_ID', 'Region', 'Choose Region (Required)', 'Region', 'yes', 'add-dropdown')
    ?>
</p>

<!-- Sub Region 1 Drop Down (required) -->
<p>
    <?php
    makeDropdown($dbconnect, 'sub_region', 'Sub_Region_ID', 'Sub_Region', 
    'Choose Subregion (required)', 'Sub_Region', 'yes', 'add-dropdown')
    ?>
</p>

<!-- Sub Region 2 Drop Down (optional) -->
<p>
    <?php
    makeDropdown($dbconnect, 'sub_region', 'Sub_Region_ID', 'Sub_Region', 'Choose Subregion 2 (optional)', 'Sub_Region', 'no', 'add-dropdown', 'sub_region2')
    ?>
</p>

<!-- National Animal (optional) -->
<p>
<input class="add-field" type="text" name="national_animal" value = "" Placeholder = "National Animal (optional)" />
</p>

<!-- Is it Mythical?  -->
<select class="add-dropdown" name="mythical">
    <option value=0 selected>National Animal is not mythical</option>
    <option value=1>National animal is mythical!</option>
</select>

<!-- Quality of Life Score -->
<p>
    <input class="add-field" type="number" name="life_quality" value = "" min=0 max=100 Placeholder = "Quality of Life Score (must be 1 or more, optional)" />
</p>

<!-- Submit Button -->
<p>
    <input class="add-field" type="submit" value="Submit" />
</p>

</form>

</div>