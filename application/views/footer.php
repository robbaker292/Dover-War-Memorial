<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
</div>
</div>
</main>
<footer class="container">
    <div class="col-md-12">
        <hr>
            <div class="btn-group btn-group-justified footer-links">
                <a href="<?php echo base_url(); ?>" class="btn btn-xs btn-primary"><i class="fa fa-home" aria-hidden="true"></i><span class="hidden-xs">&nbsp;&nbsp;Home</span></a>
                <a href="<?php echo base_url(); ?>siteUpdate" class="btn btn-xs btn-primary"><i class="fa fa-calendar" aria-hidden="true"></i><span class="hidden-xs">&nbsp;&nbsp;Latest&nbsp;<span class="visible-sm-inline"><br>&nbsp;&nbsp;</span>News</span></a>
                <a href="<?php echo base_url(); ?>memorial/listMain" class="btn btn-xs btn-primary"><i class="fa fa-users" aria-hidden="true"></i><span class="hidden-xs">&nbsp;&nbsp;Casualty&nbsp;<span class="visible-sm-inline"><br></span>Index</span></a>
                <a href="<?php echo base_url(); ?>article" class="btn btn-xs btn-primary"><i class="fa fa-info-circle" aria-hidden="true"></i><span class="hidden-xs">&nbsp;&nbsp;Articles</span></a>
                <a href="<?php echo base_url(); ?>search" class="btn btn-xs btn-primary"><i class="fa fa-search" aria-hidden="true"></i><span class="hidden-xs">&nbsp;&nbsp;Search</span></a>
                <a href="<?php echo base_url(); ?>meta/view/contactUs" class="btn btn-xs btn-primary"><i class="fa fa-envelope" aria-hidden="true"></i><span class="hidden-xs">&nbsp;&nbsp;About</span></a>
                <?php
                if(isset($_SESSION['user'])) {
                    ?>
                    <a href="<?php echo base_url(); ?>user/logout" class="btn btn-xs btn-danger"><i class="fa fa-sign-out" aria-hidden="true"></i><span class="hidden-xs">&nbsp;&nbsp;Logout</span></a>
                    <?php
                } else {
                    ?>
                    <a href="<?php echo base_url(); ?>user/login" class="btn btn-xs btn-primary"><i class="fa fa-key" aria-hidden="true"></i><span class="hidden-xs">&nbsp;&nbsp;Login</span></a>
                    <?php
                }

                ?>
            </div>
    	<p class="small">
    	This website uses cookies for various required functions. Copyright 2006-<?php echo date("y"); ?> &copy; Marilyn Stephenson-Knight. All Rights Reserved. <a href="<?php echo base_url();?>meta/view/disclaimer">Disclaimer, Copyright &amp; Cookie Statement</a>.
        </p>
    </div>
</footer>
</body>
</html>