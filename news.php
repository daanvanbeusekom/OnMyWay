<?php
//News.php

$page_title = "Nieuws";
include "top.php";

$SQL = "SELECT news_id, news_by, category_id, news_title, news_content, DATE_FORMAT(news_date,'%d')AS news_date_day, DATE_FORMAT(news_date,'%M')AS news_date_month, DATE_FORMAT(news_date,'%Y')AS news_date_year FROM news WHERE news_visible = 1 ORDER BY news_date DESC, news_id DESC";
$result = $connection->query($SQL);
?>

    <div class="text">
        
        <div class="text-title animated bounce">
				<h1>Nieuws</h1>
			</div>
        
            <?php if($_SESSION['user_level'] == 1){?>
            <div id="new_news">
                <a href="admin/news_new.php">
                            <img src="IMG/plus.png" alt="new" class="new_img" /><p>Nieuw bericht</p>
                        </a>
            </div>
            <?php } ?> 
        
		    <?php
                while($row = $result->fetch_assoc()){
            ?>
        
            <article id="news_article">
                <div id="header">
                    <h1 class="<?php if($_SESSION['user_level'] == 1){ echo "h1_admin"; }?>">
                        <?php echo $row['news_title']?>
                    </h1>
                    <div id="<?php echo "edit_news_" . $row['news_id']; ?>" class="<?php if($_SESSION['user_level'] == 1){ echo "header_edit"; }else{ echo "display_none"; }?>">
                        <a href="admin/news_delete.php?news=<?php echo $row['news_id']; ?>">
                            <img src="IMG/cross.png" alt="edit" class="header_edit_img" />
                        </a>
                    </div>
                    
                    <div id="<?php echo "edit_news_" . $row['news_id']; ?>" class="<?php if($_SESSION['user_level'] == 1){ echo "header_edit"; }else{ echo "display_none"; }?>">
                        <a href="admin/news_edit.php?news=<?php echo $row['news_id']; ?>">
                            <img src="IMG/tools.png" alt="edit" class="header_edit_img" />
                        </a>
                    </div>
                </div>
                
                <p id="news_txt">
                    <?php echo nl2br($row['news_content'])?>
                </p>
                <footer>
                    <span>
                        <?php 
                        echo $row['news_date_day'] . " ";
                        echo $row['news_date_month']. " ";
                        echo $row['news_date_year']. " Door: ";
                        echo get_maker_name($row['news_by'],$connection);
                        ?>
                    </span>
                </footer>
            </article>
        
<?php
}
?>
</div>
<?php
include "bottom.php";

?>