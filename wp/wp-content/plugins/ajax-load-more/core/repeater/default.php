<article id="post-<?php the_id(); ?>" class="post-<?php the_id(); ?> post type-post status-publish format-standard hentry <?php $cats = get_the_category(); foreach($cats as $category){ echo " category-".$category->name; } ?>"> 
	<header class="entry-header">
    	<h2 class="entry-title">
        	<a href="<?php the_guid(); ?>" rel="bookmark"><?php the_title(); ?></a>
    	</h2>
	</header><!-- .entry-header -->		
	<div class="entry-content">
    	<p>
        <?php the_content(); ?>
    	</p>
	</div><!-- .entry-content -->	
</article>