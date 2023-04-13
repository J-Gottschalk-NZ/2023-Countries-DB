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
<form class="searchform" method="post" action="index.php?page=region_search" enctype="multipart/form-data">

    <?php
    $drop_find_sql = "SELECT * FROM `regions`  ORDER BY `regions`.`Region` ASC";
    $drop_find_query = mysqli_query($dbconnect, $drop_find_sql);

    ?>

    <select class="search" name="region">

        <option value="" selected>Region</option>

        <!-- Create options by looping through DB table -->

        <?php 
        while ($drop_find_rs=mysqli_fetch_assoc($drop_find_query)) {        
        ?>

        <option value="<?php echo $drop_find_rs['Region_ID']; ?>"><?php echo $drop_find_rs['Region']; ?></option>
        
        <?php 
        } // end of 'while' bracket
        ?>

    </select>

    <input class="submit" type="submit" name="region_find" 
    value="&#xf002;" />

</form>
 
</div> <!-- / side bar -->