<?php include "inc/header.php" ?>

<h1>Welcome!</h1>

<?php
if(isset($_SESSION['email'])) : ?>
    <?php create_post(); ?>
    <br>
    <form method="POST">
        <h3>Create new post</h3>
        <textarea name="post_content" id="" cols="60" rows="10" placeholder="Post content..."></textarea>
        <input type="submit" value="Post" name="submit">
    </form>

    <div>
        <?php display_message(); ?>
    </div>
    <hr>

    <div class="posts">
        <?php fetch_all_posts(); ?>
    </div>

<?php else : ?>

    <div class="homepage">
        <h1>Welcome to Social Network</h1>
        <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Incidunt debitis a magni accusamus vero eius atque recusandae doloribus non. Tenetur sint, debitis ipsum aliquid odio quasi iure necessitatibus mollitia delectus!</p>
        <h2>Click <a href="login.php">here</a> to login!</h2>
        <img src="css/img/social.jpg" alt="">
    </div>

<?php endif; ?>

<?php include "inc/footer.php";