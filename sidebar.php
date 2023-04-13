<div class="box side">
           
<h2>Search Area</h2>

<p>
<a href="index.php?page=showall">Show all</a>
</p>

<!-- Quick Search form -->
<form class="searchform" method="post" action="index.php?page=quick_search" enctype="multipart/form-data">

    <input class="search" type="text" name="quick_search" required value="" placeholder="Quick Search" />

    <input class="submit" type="submit" name="quick_find" 
    value="&#xf002;" />

</form>

<!-- Region search -->

    <?php
   makeDropdown($dbconnect, 'regions', 'Region_ID', 'Region', 'region_search', 'Region');
   ?>

 
</div> <!-- / side bar -->