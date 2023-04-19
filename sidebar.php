<div class="box side">
           
<p>
  <a class="button side blue_grey_btn" href="index.php?page=showall">Show all</a>
</p>

<!-- Quick Search form -->
<form class="searchform" method="post" action="index.php?page=quick_search" enctype="multipart/form-data">

    <input class="search" type="text" name="quick_search" required value="" placeholder="Quick Search" />

    <input class="submit" type="submit" name="quick_find" 
    value="&#xf002;" />

</form>

<!-- Region search -->
<?php
   makeDropdownForm($dbconnect, 'regions', 'Region_ID', 'Region', 'region_search', 'Region', 'Region');
?>

<!-- Sub region search  -->
<?php
   makeDropdownForm($dbconnect, 'sub_region', 'Sub_Region_ID', 'Sub_Region', 'sub_region_search', 'Sub Region', 'Sub_Region');
?>

<!-- Quality of Life Drop down -->
<?php
   makeDropdownForm($dbconnect, 'quality', 'Quality_ID', 'Quality', 'quality_search', 'Quality of Life', 'Quality_ID');
?>

<!-- Mythical Animal Search -->
<p>
  <a class="button side blue_grey_btn" href="index.php?page=mythical">Mythical National Animal</a>
</p>

<hr />

<!-- Add Entry form -->
<p>
  <a class="button side orange_grey_btn" href="index.php?page=add_entry">Add Entry</a>
</p>

</div> <!-- / side bar -->