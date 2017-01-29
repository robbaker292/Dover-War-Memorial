<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
</div>
</div>
</main>
<footer class="container">
    <div class="col-md-12">
        <hr>
        <a href="<?php echo base_url(); ?>">Home</a>&nbsp;&nbsp;|&nbsp;
        <a href="<?php echo base_url(); ?>siteUpdate">Latest News</a>&nbsp;&nbsp;|&nbsp;
        <a href="/">Casualty Index</a>&nbsp;&nbsp;|&nbsp;
        <a href="/">Information Index</a>&nbsp;&nbsp;|&nbsp;
        <a href="/">Search</a>&nbsp;&nbsp;|&nbsp;
        <a href="/">About &amp; Contact</a>&nbsp;&nbsp;|&nbsp;
        <?php
        if(isset($_SESSION['user'])) {
            ?>
           <span class="loginInfo"> Logged in as: <?php echo $_SESSION['user']; ?></span>&nbsp;&nbsp;|&nbsp;<a href="<?php echo base_url(); ?>user/logout">Logout</a>
            <?php
        } else {
            ?>
            <a href="<?php echo base_url(); ?>user/login">Login</a>
            <?php
        }

        ?>
    	<p class="small">
    	This website uses cookies for various required functions.<br>
    	Copyright 2006-<?php echo date("y"); ?> &copy; Marilyn Stephenson-Knight. All Rights Reserved
        </p>
    </div>
</footer>
</body>
</html>