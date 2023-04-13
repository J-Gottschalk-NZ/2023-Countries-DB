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
<form class="searchform">

    
    <select class="search" name="region">

        <option value="" selected>Region</option>

        <option value="1">Region 1</option>
        <option value="1">Region 1</option>
        
    </select>

    <input class="submit" type="submit" name="region_find" 
    value="&#xf002;" />

</form>
 
</div> <!-- / side bar -->